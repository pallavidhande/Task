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
    public partial class UpdateTask : System.Web.UI.Page
    {


        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
           if(txtuserid.Text=="Admin"  && txtpassword.Text=="Admin")
            {
                Response.Redirect("AdminPage.aspx");
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            SqlDataAdapter da = new SqlDataAdapter("select * from [Login]", con1);
            DataSet ds = new DataSet();
            da.Fill(ds, "t");
            bool flag = false;
            for (int i = 0; i < ds.Tables["t"].Rows.Count; i++)
            {
                DataRow dr = ds.Tables["t"].Rows[i];
                if (dr["Userid"].ToString() == txtuserid.Text && dr["Password"].ToString() == txtpassword.Text)
                {
                    flag = true;
                    Session["Userid"] = txtuserid.Text;
                    Session["Password"] = txtpassword.Text;
                    Session["BranchName"] = dr["BranchName"].ToString();
                    Response.Redirect("ANR.aspx");
                    break;
                }
               
            if (flag == false)
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
}
    
