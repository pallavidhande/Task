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
    public partial class MDSir : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                
            }
            if (!IsPostBack)
            {
                //gvbind();
            }



        }

        //protected void gvbind()
        //{
        //    con1.Open();
        //    //   SqlCommand cmd = new SqlCommand(" Select top(1000)* from [EmployeeTask].[dbo].[DailyTask] order by TaskCompletionDate asc   ", con1);

        //    SqlCommand cmd = new SqlCommand(" SELECT * FROM [EmployeeTask].[dbo].[DailyTask] where [TaskStatus]='pending' order by BranchName    ", con1);

        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    con1.Close();
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        GridView1.DataSource = ds;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
        //        GridView1.DataSource = ds;
        //        GridView1.DataBind();
        //        int columncount = GridView1.Rows[0].Cells.Count;
        //        GridView1.Rows[0].Cells.Clear();
        //        GridView1.Rows[0].Cells.Add(new TableCell());
        //        GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
        //        GridView1.Rows[0].Cells[0].Text = "No Records Found";
        //    }
        //}
        //protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        //{
        //    GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //    Label lbldeleteid = (Label)row.FindControl("lblID");
        //    con1.Open();
        //    SqlCommand cmd = new SqlCommand("delete FROM DailyTask where id='" + Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString()) + "'", con1);
        //    cmd.ExecuteNonQuery();
        //    con1.Close();
        //    if (DropDownList1.Enabled == true)
        //    {
        //        //gvbind1();
        //    }
        //    else if (DropDownList2.Enabled == true)
        //    {
        //        //gvbind2();
        //    }
        //    else
        //    {
        //        gvbind();
        //    }
        //}
        //protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //    GridView1.EditIndex = e.NewEditIndex;
        //    if (DropDownList1.Enabled == true)
        //    {
        //        gvbind1();
        //    }
        //    else if (DropDownList2.Enabled == true)
        //    {
        //        gvbind2();
        //    }
        //    else
        //    {
        //        gvbind();
        //    }
        //}
        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
        //    con1.Open();
        //    int userid = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        //    //string Status = (GridView1.Rows[e.RowIndex].FindControl("ddlStatus") as DropDownList).SelectedItem.Value;
        //    //string Taskassignby = (GridView1.Rows[e.RowIndex].FindControl("ddlassignby") as DropDownList).SelectedItem.Value;
        //string Remark=(GridView1.Rows[e.RowIndex].FindControl("txtRemark") as TextBox).Text;
        //    GridViewRow row = (GridViewRow)GridView1.Rows[e.RowIndex];
        //  //  Label lblID = (Label)row.FindControl("lblID");
        //    //TextBox txtname = (TextBox)row.Cells[2].Controls[0];
        //    //TextBox textsubject = (TextBox)row.Cells[3].Controls[0];
        //    //TextBox txtaddress = (TextBox)row.Cells[4].Controls[0];
        //   // TextBox txtremark = (TextBox)row.Cells[6].Controls[0];
        // //  TextBox txttask = (TextBox)row.Cells[0].Controls[0];
        //    //TextBox taskcreation = (TextBox)row.Cells[1].Controls[0];
        //  //  string letterType = (GridView1.Rows[e.RowIndex].FindControl("txtDate") as TextBox).Text;
        //    // txtremark.MaxLength = 250;
        //    //string Compledate = (GridView1.Rows[e.RowIndex].FindControl("txtDate") as TextBox).Text;

        //    GridView1.EditIndex = -1;
        //    SqlCommand cmd = new SqlCommand("update DailyTask  set  Remark=N'" + Remark + "' where ID='" + userid + "'", con1);
        //   // SqlCommand cmd = new SqlCommand("update  DailyTask set Task=N'" + txttask.Text + "',TaskAssignBy=N'" + Taskassignby + "',TaskCompletionDate=N'" + letterType + "',TaskStatus=N'" + Status + "' , Remark=N'" + Remark + "' where ID='" + userid + "'", con1);
        //    //SqlCommand cmd = new SqlCommand("update InOut set [FromWhomeRecieved]=N'" + txtname.Text + "',[Subject]=N'" + textsubject.Text + "',Address=N'" + txtaddress.Text + "',SentTo=N'" + Status + "'  where id='" + userid + "'", con1);
        //    cmd.ExecuteNonQuery();
        //    con1.Close();
        //    if (DropDownList1.Enabled == true)
        //    {
        //        gvbind1();
        //    }
        //    else if (DropDownList2.Enabled == true)
        //    {
        //        gvbind2();
        //    }
        //    else
        //    {
        //        gvbind();
        //    }
            //GridView1.DataBind();  
        }
        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    if (DropDownList1.Enabled == true)
        //    {
        //        gvbind1();
        //    }
        //    else if (DropDownList2.Enabled == true)
        //    {
        //        gvbind2();
        //    }
        //    else
        //    {
        //        gvbind();
        //    }
        //}
        //protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        //{
        //    GridView1.EditIndex = -1;
        //    if (DropDownList1.Enabled == true)
        //    {
        //        gvbind1();
        //    }
        //    else if (DropDownList2.Enabled == true)
        //    {
        //        gvbind2();
        //    }
        //    else
        //    {
        //        gvbind();
        //    }
        //}

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            
                //gvbind1();
            
        }

        //protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        //{
        //    if ((e.Row.RowState & DataControlRowState.Edit) > 0)
        //    {
        //        // BIND THE "DROPDOWNLIST" WITH THE DATASET 
        //        DropDownList ddlDept = new DropDownList();
        //        ddlDept = (DropDownList)e.Row.FindControl("ddlStatus");
        //        SqlDataAdapter SqlAdapter = new SqlDataAdapter("SELECT TaskStatus FROM dbo.DailyTask", con1);
        //        DataSet ds = new DataSet();
        //        SqlAdapter.Fill(ds, "TaskStatus");
        //        if (ddlDept != null)
        //        {
        //            ddlDept.DataSource = ds.Tables["TaskStatus"];
        //            ddlDept.DataValueField = ds.Tables["TaskStatus"].Columns["TaskStatus"].ColumnName.ToString();
        //            ddlDept.DataBind();

        //            // ASSIGN THE SELECTED ROW VALUE 
        //            //((DropDownList)e.Row.FindControl("ddlStatus")).SelectedValue =
        //            //    (e.Row.FindControl("lblCity1") as Label).Text; ;
        //        }
        //    }

        //protected void gvbind1()
        //{
        //    con1.Open();
        //    SqlCommand cmd;
        //    if (DropDownList3.SelectedItem.Text == "Select By Status and Employee Name")
        //    {
        //        cmd = new SqlCommand("  Select top(100)* from [EmployeeTask].[dbo].[DailyTask]  where EmpName='" + DropDownList2.SelectedItem.Text + "' and TaskStatus='" + DropDownList1.SelectedItem.Text + "' order by TaskCompletionDate asc  ", con1);
        //    }
        //    else
        //    {
        //        cmd = new SqlCommand("  Select top(100)* from [EmployeeTask].[dbo].[DailyTask]  where TaskStatus='" + DropDownList1.SelectedItem.Text + "' order by TaskCompletionDate ASC ", con1);
        //    }
        //        SqlDataAdapter da = new SqlDataAdapter(cmd);
        //    DataSet ds = new DataSet();
        //    da.Fill(ds);
        //    con1.Close();
        //    if (ds.Tables[0].Rows.Count > 0)
        //    {
        //        GridView1.DataSource = ds;
        //        GridView1.DataBind();
        //    }
        //    else
        //    {
        //        ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
        //        GridView1.DataSource = ds;
        //        GridView1.DataBind();
        //        int columncount = GridView1.Rows[0].Cells.Count;
        //        GridView1.Rows[0].Cells.Clear();
        //        GridView1.Rows[0].Cells.Add(new TableCell());
        //        GridView1.Rows[0].Cells[0].ColumnSpan = columncount;
        //        GridView1.Rows[0].Cells[0].Text = "No Records Found";
        //    }
        //}

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
          
            //gvbind2();
        }

       

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("https://docs.google.com/spreadsheets/d/1nnC2uR3l8e1poHrMlgUsP_GDA67QTl9_z0nJvvdRJVs/edit?usp=sharing");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("DepartmentwiseEntry.aspx");
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

        protected void Request_Click(object sender, EventArgs e)
        {
            Response.Redirect("MD_request.aspx");
        }

        protected void meeting_Click(object sender, EventArgs e)
        {
            Response.Redirect("MD_Meeting.aspx");
        }

        protected void evaluation_Click(object sender, EventArgs e)
        {
            Response.Redirect("http://117.217.120.22:8083/");
        }

        protected void Dept_Click(object sender, EventArgs e)
        {
            Response.Redirect("Allfiles.aspx");

        }

        protected void Ethical_Click(object sender, EventArgs e)
        {
            Response.Redirect("MD_Feedback.aspx");
        }

        protected void ABGC_Click(object sender, EventArgs e)
        {
      
            Response.Redirect("Evalution.aspx");
        }

        protected void monthdairy_Click(object sender, EventArgs e)
        {
            Response.Redirect("MDMonthdairy.aspx");
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Response.Redirect("MDUpdation.aspx");
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {

        }
    }
}

