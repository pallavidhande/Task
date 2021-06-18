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
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            ValidationSettings.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            String Userid = Session["Userid"].ToString();
            String Password = Session["Password"].ToString();
            string branch = Session["BranchName"].ToString();

            Label1.Text = Session["Userid"].ToString();
            Label2.Text = Session["BranchName"].ToString();

            CalendarExtender1.StartDate = DateTime.Today;
          
            if (!IsPostBack)
            {

             



            }

        }


       

        protected void btnlogin_Click(object sender, EventArgs e)
        {

        }

        protected void btnreset_Click(object sender, EventArgs e)
        {

        }


        //protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        //{
        //    string EmpName = DropDownList1.SelectedItem.Text;
        //}

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string TaskassignBy = RadioButtonList1.SelectedItem.Text;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {


            //   if (TextBox1.Text.Length > 10)
            //      {
            //          string message = "Select Proper Date .....";


            //          System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //          sb.Append("<script type = 'text/javascript'>");


            //          sb.Append("window.onload=function(){");

            //          sb.Append("alert('");

            //          sb.Append(message);

            //          sb.Append("')};");

            //          sb.Append("</script>");

            //          ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            //      }
            //      else
            //      {



            //  con.Open();
            //  SqlCommand command;
            //  SqlDataAdapter adapter = new SqlDataAdapter();
            //  String sql = "";
            //      DateTime taskcraetiondate = Convert.ToDateTime(System.DateTime.Now);

            //          if (TextBox3.Text.Contains("'"))
            //          {
            //              TextBox3.Text = TextBox3.Text.Replace("'",",");
            //          }





            //sql = "Insert into [DailyTask](TaskAssignBy,TaskCompletionDate,EmpName,Task,TaskStatus,BranchName,TaskCreationDate," +
            //              "RevisedTimeline,Board_Resolution)" +
            //              " Values('" + RadioButtonList1.SelectedItem.Text + "'," +
            //              "'" + TextBox1.Text + "','" +Label1.Text + "',N'" + TextBox3.Text + "'," +
            //              "'Pending','"+Label2.Text+ "',  GETDATE(),'" + TextBox1.Text + "','"+txtboard.Text+"')";
            //      command = new SqlCommand(sql, con);
            //  adapter.InsertCommand = new SqlCommand(sql, con);
            //          //adapter.InsertCommand.ExecuteNonQuery();




            //          //File upload

            //          string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            //          string contentType = FileUpload1.PostedFile.ContentType;
            //          using (Stream fs = FileUpload1.PostedFile.InputStream)
            //          {
            //              using (BinaryReader br = new BinaryReader(fs))
            //              {
            //                  byte[] bytes = br.ReadBytes((Int32)fs.Length);

            //                  SqlConnection con = new SqlConnection("server= DESKTOP-M3LCTVJ ;database=EmployeeTask;integrated Security=SSPI;");

            //                  string query = "update [EmployeeTask].[dbo].[DailyTask] set FileName=@Name , ContentType= @ContentType , Data=@Data where Task='" + TextBox3.Text + "'";

            //                  //string query = "INSERT INTO tblFiles VALUES (@Name, @ContentType, @Data)";

            //                  using (SqlCommand cmd = new SqlCommand(query))
            //                  {
            //                      cmd.Connection = con;
            //                      cmd.Parameters.AddWithValue("@Name", filename);
            //                      cmd.Parameters.AddWithValue("@ContentType", contentType);
            //                      cmd.Parameters.AddWithValue("@Data", bytes);
            //                      con.Open();
            //                      cmd.ExecuteNonQuery();
            //                      con.Close();
            //                  }

            //              }
            //          }






            //          int n = command.ExecuteNonQuery();
            //      con.Close();

            //  if (n != null)

            //  {
            //          string message = "Record Saved Successfully .....";


            //          System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //          sb.Append("<script type = 'text/javascript'>");


            //          sb.Append("window.onload=function(){");

            //          sb.Append("alert('");

            //          sb.Append(message);

            //          sb.Append("')};");

            //          sb.Append("</script>");

            //          ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


            //          TextBox1.Text = "";
            //          TextBox3.Text = "";
            //        //  DropDownList1.SelectedItem.Text = "";
            //          RadioButtonList1.SelectedItem.Text = "";
            //          //DropDownList2.SelectedItem.Text = "";
            //          Response.Redirect("ANR.aspx");
            //      }
            //  }


            if (TextBox1.Text.Length > 10)
            {
                string message = "Select Proper Date .....";


                System.Text.StringBuilder sb = new System.Text.StringBuilder();

                sb.Append("<script type = 'text/javascript'>");


                sb.Append("window.onload=function(){");

                sb.Append("alert('");

                sb.Append(message);

                sb.Append("')};");

                sb.Append("</script>");

                ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());

            }
            else
            {


                //byte[] bytes = null;
                //con.Open();
                //SqlCommand command;
                //SqlDataAdapter adapter = new SqlDataAdapter();
                //String sql = "";
                //DateTime taskcraetiondate = Convert.ToDateTime(System.DateTime.Now);



                //using (Stream fs = FileUpload1.PostedFile.InputStream)
                //{
                //    using (BinaryReader br = new BinaryReader(fs))
                //    {
                //         bytes = br.ReadBytes((Int32)fs.Length);

                //    }
                //}



                //        if (TextBox3.Text.Contains("'"))
                //{
                //    TextBox3.Text = TextBox3.Text.Replace("'", ",");
                //}
                //sql = "Insert into [DailyTask](TaskAssignBy,TaskCompletionDate,EmpName," +
                //    "Task,TaskStatus,BranchName,TaskCreationDate,RevisedTimeline,Board_Resolution,[FileName],[ContentType],[Data]) " +
                //    "Values('" + RadioButtonList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + Label1.Text + "'," +
                //    "N'" + TextBox3.Text + "','Pending','" + Label2.Text + "',  GETDATE(),'" + TextBox1.Text + "','" + txtboard.Text + "'," +
                //    "N'"+ FileUpload1.PostedFile.FileName + "','"+ FileUpload1.PostedFile.ContentType + "', '@Data')";

                //command = new SqlCommand(sql, con);
                //command.Parameters.AddWithValue("@Data", bytes);
                //adapter.InsertCommand = new SqlCommand(sql, con);
                ////adapter.InsertCommand.ExecuteNonQuery();



                SqlCommand cmd = null;
                string Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                string contentType = FileUpload1.PostedFile.ContentType;
                using (Stream fs = FileUpload1.PostedFile.InputStream)
                {
                    using (BinaryReader br = new BinaryReader(fs))
                    {
                        byte[] bytes = br.ReadBytes((Int32)fs.Length);

                        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                        string query = "Insert into [DailyTask](TaskAssignBy,TaskCompletionDate,EmpName," +
                    "Task,TaskStatus,BranchName,TaskCreationDate,RevisedTimeline,Board_Resolution,[FileName],[ContentType],[Data]) " +
                    "Values('" + RadioButtonList1.SelectedItem.Text + "','" + TextBox1.Text + "','" + Label1.Text + "'," +
                    "N'" + TextBox3.Text + "','Pending','" + Label2.Text + "',  GETDATE(),'" + TextBox1.Text + "',N'" + txtboard.Text + "', @Filename, @ContentType, @Data)";

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







                int n = cmd.ExecuteNonQuery();
                con.Close();









                if (n != null)

                {
                    string message = "Record Saved Successfully .....";


                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");


                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


                    TextBox1.Text = "";
                    TextBox3.Text = "";
                    //  DropDownList1.SelectedItem.Text = "";
                    RadioButtonList1.SelectedItem.Text = "";
                    //DropDownList2.SelectedItem.Text = "";
                    Response.Redirect("ANR.aspx");
                }
            }

        }
        protected void btndanger_Click(object sender, EventArgs e)
        {
            Response.Redirect("Update.aspx");
        }

        

        protected void Button2_Click1(object sender, EventArgs e)
        {
            Response.Redirect("ANR.aspx");
        }
    }
}
