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
    public partial class Feedback : System.Web.UI.Page
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

            if (!IsPostBack)
                  {
                BindContrydropdown();
            }
        }

        protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

        }

        protected void TextBox3_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtboard_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "--Select--")
            {
                string message = "Select name to which who want to assess";


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
                con.Open();
                SqlCommand cmd = new SqlCommand("Insert into [ethical]( [fromperson],[dept],[toperson],[record_date],[panctality],[honesty],[behaviour],[feedback]) " +
                    "Values('" + Label1.Text + "','" + Label2.Text + "','" + DropDownList1.SelectedItem.Text + "'," +
                    "getdate(),'" + radiopan.SelectedItem.Text + "'," +
                    "'" + radiohonest.SelectedItem.Text + "','" + radiohonest.SelectedItem.Text + "',N'" + TextBox1.Text + "')", con);
                int n = cmd.ExecuteNonQuery();
                con.Close();

                TextBox1.Text = "";
                //txtmeeting.Text = "";
                radiohonest.Text = "";
                radiopan.Text = "";
                radiobehaviour.Text = "";
                //DropDownList1.Text = " ";
                Response.Redirect("thank.aspx");
            }
        }
        protected void BindContrydropdown()
        {
                con.Open();
                SqlCommand cmd = new SqlCommand("SELECT [UserId]FROM [EmployeeTask].[dbo].[Login]", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                DataSet ds = new DataSet();
                da.Fill(ds);
                dt = ds.Tables[0];

                DropDownList1.DataSource = dt;
                DropDownList1.DataTextField = "UserId";
                DropDownList1.DataValueField = "UserId";
                DropDownList1.DataBind();
                DropDownList1.Items.Insert(0, new ListItem("--Select--", "0"));
                con.Close();
            
        }

        protected void Button2_Click1(object sender, EventArgs e)
        {
           
        }
    }
}