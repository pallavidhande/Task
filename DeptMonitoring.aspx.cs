using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace Task
{
    public partial class DeptMonitoring : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            //String Userid = Session["Userid"].ToString();
            //String Password = Session["Password"].ToString();
            //Label1.Text = Session["Userid"].ToString();

            ////Header.Visible = false;
            ////Panel1.Visible = false;
            ///
            //SqlCommand cmd = new SqlCommand();
            //cmd.CommandText = " Select distinct [BranchName] FROM [EmployeeTask].[dbo].[DailyTask]";
            //cmd.Connection = con1;
            //con1.Open();
            //DataTable dt = new DataTable();

            //dt.Load(cmd.ExecuteReader());
            //con1.Close();

            //DropDownList1.DataSource = dt;
            //DropDownList1.DataTextField = "BranchName";
            //DropDownList1.DataValueField = "BranchName";
            //DropDownList1.DataBind();

        }

        protected void gvbind()
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            //gvbind1();
        }



        protected void gvbind1()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand(" select * from [EmployeeTask].[dbo].[DailyTask] where [BranchName]='" + DropDownList1.SelectedItem.Text + "' and TaskStatus='" + DropDownList2.SelectedItem.Text + "' order by TaskCreationDate asc ", con1);
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
            string Taskassignby = (GridView1.Rows[e.RowIndex].FindControl("ddlassignby") as DropDownList).SelectedItem.Value;
            GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
            Label lblID = (Label)row.FindControl("lblID");
            //TextBox txtname = (TextBox)row.Cells[2].Controls[0];
            //TextBox textsubject = (TextBox)row.Cells[3].Controls[0];
            //TextBox txtaddress = (TextBox)row.Cells[4].Controls[0];
            TextBox txtremark = (TextBox)row.Cells[5].Controls[0];
            TextBox txttask = (TextBox)row.Cells[0].Controls[0];
            //TextBox taskcreation = (TextBox)row.Cells[1].Controls[0];
            string letterType = (GridView1.Rows[e.RowIndex].FindControl("txtDate") as TextBox).Text;
            // txtremark.MaxLength = 250;
            //string Compledate = (GridView1.Rows[e.RowIndex].FindControl("txtDate") as TextBox).Text;

            GridView1.EditIndex = -1;

            SqlCommand cmd = new SqlCommand("update  DailyTask set Task=N'" + txttask.Text + "',TaskAssignBy=N'" + Taskassignby + "',TaskCompletionDate=N'" + letterType + "',TaskStatus=N'" + Status + "' , Remark=N'" + txtremark.Text + "' where ID='" + userid + "'", con1);
            //SqlCommand cmd = new SqlCommand("update InOut set [FromWhomeRecieved]=N'" + txtname.Text + "',[Subject]=N'" + textsubject.Text + "',Address=N'" + txtaddress.Text + "',SentTo=N'" + Status + "'  where id='" + userid + "'", con1);
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            gvbind1();
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            todaystask();

        }
        protected void todaystask()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("    select top(40)* from [EmployeeTask].[dbo].[DailyTask] order by [TaskCreationDate] desc ", con1);
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
        public void DownloadFile(object sender, EventArgs e)
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

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {

        }
    }
}