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
    public partial class meeting : System.Web.UI.Page
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
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = null;
            string Filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
            string contentType = FileUpload1.PostedFile.ContentType;
            using (Stream fs = FileUpload1.PostedFile.InputStream)
            {
                using (BinaryReader br = new BinaryReader(fs))
                {
                    byte[] bytes = br.ReadBytes((Int32)fs.Length);

                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

                    string query = "Insert into [meeting]([meeting_remark],[userid],[pass],[branch],[meeting_date],[Filename],[ContentType],[Data]) " +
                "Values(N'" + txtremarkmeeting.Text + "','" + Session["Userid"].ToString() + "'," +
                "'" + Session["Password"].ToString() + "','" + Session["BranchName"].ToString() + "',N'" + txtmeeting.Text + "',@Filename, @ContentType, @Data)";

                    using (cmd = new SqlCommand(query))
                    {
                        cmd.Connection = con;
                        cmd.Parameters.AddWithValue("@Filename", Filename);
                        cmd.Parameters.AddWithValue("@ContentType", contentType);
                        cmd.Parameters.AddWithValue("@Data", bytes);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }

                }

            }


                //con.Open();
                //SqlCommand cmd = new SqlCommand("Insert into [meeting]([meeting_remark],[userid],[pass],[branch],[meeting_date],[Filename],[ContentType],[Data]) " +
                //    "Values(N'" + txtremarkmeeting.Text + "','" + Session["Userid"].ToString() + "'," +
                //    "'" + Session["Password"].ToString() + "','" + Session["BranchName"].ToString() + "',N'" + txtmeeting.Text + "',@Filename, @ContentType, @Data)", con);
                //int n = cmd.ExecuteNonQuery();
                //con.Close();

                txtremarkmeeting.Text = "";
                //txtmeeting.Text = "";
                txtmeeting.Text = "";
                Response.Redirect("ANR.aspx");
            }
        }
    }
