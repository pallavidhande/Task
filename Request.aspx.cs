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
    public partial class Request : System.Web.UI.Page
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

          //  CalendarExtender1.StartDate = DateTime.Today;

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
           

        }

        protected void Button1_Click(object sender, EventArgs e)
        {




            //SqlConnection con = new SqlConnection("server= DESKTOP-M3LCTVJ ;database=EmployeeTask;integrated Security=SSPI;");
            //con.Open();
            //SqlCommand cmd = new SqlCommand();

            //string query = "Insert into [Request_meeting_idea](Request ,meeting ,inovation_ides,[userid],[pass],[branch],create_date) " +
            //    "Values('" + txtrequest.Text + "','" + txtmeeting.Text + "','" + txtinn.Text + "','"+ Session["Userid"].ToString() + "'," +
            //    "'"+ Session["Password"].ToString() + "','"+ Session["BranchName"].ToString() + "','"+TextBox1.Text+"')";

            //int n = cmd.ExecuteNonQuery();
            //if (n != null)

            //{
            //    string message = "Record Saved Successfully .....";


            //    System.Text.StringBuilder sb = new System.Text.StringBuilder();

            //    sb.Append("<script type = 'text/javascript'>");


            //    sb.Append("window.onload=function(){");

            //    sb.Append("alert('");

            //    sb.Append(message);

            //    sb.Append("')};");

            //    sb.Append("</script>");

            //    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());


            //    TextBox1.Text = "";
            //    txtrequest.Text = "";
            //    txtinn.Text = "";
            //    txtmeeting.Text = "";
            //    //  DropDownList1.SelectedItem.Text = "";


            //    //DropDownList2.SelectedItem.Text = "";
            //    Response.Redirect("ANR.aspx");

            //con.Open();
            //SqlCommand cmd = new SqlCommand("Insert into [Request_meeting_idea](Request  ,inovation_ides,[userid],[pass],[branch],create_date,[FileName],[ContentType],[Data]) Values('" + txtrequest.Text + "','" + txtinn.Text + "','" + Session["Userid"].ToString() + "',   "'" + Session["Password"].ToString() + "','" + Session["BranchName"].ToString() + "','" + System.DateTime.Now + "',@Filename, @ContentType, @Data)", con);
            //int n = cmd.ExecuteNonQuery();
            //con.Close();

            //txtinn.Text = "";
            ////txtmeeting.Text = "";
            //txtrequest.Text = "";
            //Response.Redirect("ANR.aspx");


            SqlCommand cmd = null;
            string Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                    string query = "Insert into [Request_meeting_idea](Request,inovation_ides,userid,pass,branch,create_date,FileName,ContentType,Data)" +
                        " Values" +
                        "(N'" + txtrequest.Text + "',N'" + txtinn.Text + "','" + Session["Userid"].ToString() + "', " +
                        "'" + Session["Password"].ToString() + "','" + Session["BranchName"].ToString() + "'," +
                        "'" + System.DateTime.Now + "',@Filename, @ContentType, @Data)";

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
           Response.Redirect("ANR.aspx");
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