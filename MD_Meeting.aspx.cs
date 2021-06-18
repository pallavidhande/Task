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
    public partial class MD_Meeting : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //DropDownList1.Items.Insert(0, new ListItem("Please select", ""));
                //string com = "SELECT distinct branch FROM [EmployeeTask].[dbo].[meeting] ";
                //SqlDataAdapter adpt = new SqlDataAdapter(com, con1);
                //DataTable dt = new DataTable();
                //adpt.Fill(dt);
                //DropDownList1.DataSource = dt;
                //DropDownList1.DataBind();
                //DropDownList1.DataTextField = "branch";
                //DropDownList1.DataValueField = "branch";

                //DropDownList1.DataBind();
                //DropDownList1.Items.Insert(0, new ListItem("Please select", ""));



            }

        }
        protected void gvbind()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand(" SELECT * FROM [EmployeeTask].[dbo].[meeting] where branch='"+DropDownList1.SelectedItem.Text+"' order by [meeting_date] asc  ", con1);
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

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            string str;
            con1.Open();
            SqlCommand cmd11 = new SqlCommand();
            str = "SELECT distinct  EmpName FROM [EmployeeTask].[dbo].[Login]  where BranchName='" + DropDownList1.SelectedItem.Text + "' and HOD='HOD' ";
            cmd11 = new SqlCommand(str, con1);
            SqlDataReader reader = cmd11.ExecuteReader();
            reader.Read();
            Label4.Text = reader["EmpName"].ToString();
            reader.Close();
            con1.Close();
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
                cmd.CommandText = "select [Filename] ,[ContentType],[Data]FROM [EmployeeTask].[dbo].[meeting] where ID=@Id and Data is not null";
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
