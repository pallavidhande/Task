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
    public partial class Login_MD : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
          
                if (txtuserid.Text == "MCDC" && txtpassword.Text =="MCDC")
                {
                    Session["Userid"] = txtuserid.Text;
                    Session["Password"] = txtpassword.Text;
                    Session["BranchName"] = "Managing Director";
                    Response.Redirect("MDSir.aspx");
                   

                }


            else
            {
                    string message = "InCorrect User ID or Password";


                    System.Text.StringBuilder sb = new System.Text.StringBuilder();

                    sb.Append("<script type = 'text/javascript'>");


                    sb.Append("window.onload=function(){");

                    sb.Append("alert('");

                    sb.Append(message);

                    sb.Append("')};");

                    sb.Append("</script>");

                    ClientScript.RegisterClientScriptBlock(this.GetType(), "alert", sb.ToString());
                }

                con1.Close();

            


        }
    }
    }
