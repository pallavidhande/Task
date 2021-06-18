using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.IO;
using System.Configuration;
namespace Task
{
    public partial class ANR : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            String Userid = Session["Userid"].ToString();
            String Password = Session["Password"].ToString();
            Label1.Text = Session["Userid"].ToString();

            //Header.Visible = false;
            //Panel1.Visible = false;
            if (!IsPostBack)
            {
                gvbind();
            }
        }

        protected void gvbind()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("  Select * from [EmployeeTask].[dbo].[DailyTask] where EmpName = N'" + Session["Userid"].ToString() + "' order by TaskCreationDate DESC ", con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con1.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView1.DataSource = ds;
                GridView1.DataBind();
                int columncount = GridView1.Rows[0].Cells.Count;
                GridView1.Rows[0].Cells.Clear();
                GridView1.Rows[0].Cells.Add(new TableCell());
                GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView1.Rows[0].Cells[0].Text = "No Records Found";
            }
        }
        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lbldeleteid = (Label)row.FindControl("lblID");
            con1.Open();
            SqlCommand cmd = new SqlCommand("delete FROM DailyTask where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con1);
            cmd.ExecuteNonQuery();
            con1.Close();
            gvbind();
        }
        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            gvbind();
        }
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            con1.Open();
            int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
            string Status = (GridView1.Rows[e.RowIndex].FindControl("ddlStatus") as DropDownList).SelectedItem.Value;
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];

            string Remark = (GridView1.Rows[e.RowIndex].FindControl("txtRemark") as TextBox).Text;

            Label lblID = (Label)row.FindControl("lblID");
      
            string extendeddate = (GridView1.Rows[e.RowIndex].FindControl("txtextendeddate") as TextBox).Text;
            FileUpload fu = (FileUpload)row.FindControl("fu1");
            string Filename = Path.GetFileName(fu.PostedFile.FileName);
            string contentType = fu.PostedFile.ContentType;
            GridView1.EditIndex = -1;
            SqlCommand cmd = null;
            if (fu.HasFile)
            {
                using (Stream fs = fu.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);

                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                        string query = "update  DailyTask set  TaskStatus=N'" + Status + "' ," +
              "RevisedTimeline='" + extendeddate + "', Emp_Remark=N'" + Remark + "', FileName=@Filename, ContentType=@ContentType, Data=@Data where ID='" + userid + "'";

                        using (cmd = new SqlCommand(query))
                        {
                            cmd.Connection = con;
                            cmd.Parameters.AddWithValue("@Filename", Filename);
                            cmd.Parameters.AddWithValue("@ContentType", contentType);
                            cmd.Parameters.AddWithValue("@Data", bytes);
                            con.Open();
                            //cmd.ExecuteNonQuery();
                            //con.Close();
                        }

                    }
                }
            }
            else
            {
                string query = "update  DailyTask set  TaskStatus=N'" + Status + "' ," +
              "RevisedTimeline='" + extendeddate + "',Emp_Remark=N'" + Remark + "' where ID='" + userid + "'";
                cmd = new SqlCommand(query);
                cmd.Connection = con1;
            }





            cmd.ExecuteNonQuery();
            con1.Close();
            gvbind();
            //GridView1.DataBind();  
        }
        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            this.gvbind();
        }
        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            gvbind();
        }

     

        protected void DownloadFile(object sender, EventArgs e)
        {
            Int64 id = int.Parse((sender as LinkButton).CommandArgument);
            byte[] bytes;
            string fileName, contentType;
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
            using (SqlCommand cmd = new SqlCommand())
            {
                cmd.CommandText = "select FileName, Data, ContentType from DailyTask where ID=@Id and Data is not null";
                cmd.Parameters.AddWithValue("@ID", id);
                cmd.Connection = con;
                con.Open();
                using (SqlDataReader sdr = cmd.ExecuteReader())
                {
                    if (sdr.Read() == true)
                    {
                        bytes = (byte[])sdr["Data"];
                        contentType = sdr["ContentType"].ToString();
                        fileName = sdr["FileName"].ToString();
                        con.Close();
                        Response.Clear();
                        Response.Buffer = true;
                        Response.Charset = "";
                        Response.Cache.SetCacheability(HttpCacheability.NoCache);
                        Response.ContentType = contentType;
                        Response.AppendHeader("Content-Disposition", "attachment; filename=" + fileName);
                        Response.BinaryWrite(bytes);
                        Response.Flush();
                        Response.End();
                    }
                    else
                    {
                        string message = "File is not attached in this task";


                        System.Text.StringBuilder sb = new System.Text.StringBuilder();

                        sb.Append("<script type = 'text/javascript'>");


                        sb.Append("window.onload=function(){");

                        sb.Append("alert('");

                        sb.Append(message);

                        sb.Append("')};");

                        sb.Append("</script>");

                        ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                    }




                }
            }

        }



    }

}

