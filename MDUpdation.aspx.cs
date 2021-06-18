using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace Task
{
    public partial class MDUpdation : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                dropname.Items.Insert(0, new ListItem("Please select", ""));
                string com = "Select distinct EmpName from [EmployeeTask].[dbo].[DailyTask] order by EmpName asc";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                dropname.DataSource = dt;
                dropname.DataBind();
                dropname.DataTextField = "EmpName";
                dropname.DataValueField = "EmpName";

                dropname.DataBind();
                dropname.Items.Insert(0, new ListItem("Please select", ""));
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {


       

            con1.Open();
            string query = "Insert into [DailyTask](TaskAssignBy,TaskCreationDate,TaskCompletionDate,RevisedTimeline,EmpName,Task,TaskStatus,Remark,BranchName) " +
                "Values('Managing Director',GETDATE(),'" + txtdate.Text + "','" + txtdate.Text + "','" + dropname.SelectedItem.Text + "'," +
                "N'" + txttask.Text + "','Pending','"+txtremark.Text+"','"+Label7.Text+"')";
            SqlCommand cmd = new SqlCommand();
            cmd = new SqlCommand(query,con1);


            int n = cmd.ExecuteNonQuery();
            con1.Close();

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
            }





            MailMessage Msg = new MailMessage();
            Msg.From = new MailAddress("mcdcsoft@gmail.com");
            // Recipient e-mail address.
            Msg.To.Add(Label6.Text);
            Msg.To.Add(Label6.Text);
            Msg.Subject = "TASK BY MD SIR";
            Msg.Body = txttask.Text + " " + txtdate.Text;
            // your remote SMTP server IP.
    
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.EnableSsl = true;
          //  smtp.UseDefaultCredentials = true;
            smtp.Credentials = new System.Net.NetworkCredential("mcdcsoft@gmail.com", "app@mcdc");
            smtp.EnableSsl = true;
            smtp.Send(Msg);
            Msg = null;

            txtdate.Text = "";
            txtremark.Text = "";
            txttask.Text = "";
            Label6.Text = "";
        }

        protected void dropname_SelectedIndexChanged(object sender, EventArgs e)
        {
           

         
            string str;
            SqlCommand com;

            con1.Open();
            str = "Select Email,BranchName  from [EmployeeTask].[dbo].[Login] where UserId='" + dropname.SelectedItem.Text + "'";
            com = new SqlCommand(str, con1);
            SqlDataReader reader = com.ExecuteReader();

            reader.Read();
            Label6.Text = reader["Email"].ToString();
            Label7.Text= reader["BranchName"].ToString();
            reader.Close();
            con1.Close();

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            Response.Redirect("MDSir.aspx");
        }
    }
















          
    }
