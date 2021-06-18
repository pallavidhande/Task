using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Web;
using System.Data;

namespace Task
{
    public partial class DisplayInfo : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            //String Userid = Session["Userid"].ToString();
            //Label4.Text = Session["Userid"].ToString();
            btnlogin.Visible = false;

            if (!IsPostBack)
            {

                //GridView1.Visible = false;
            }

            else
            {
                gvbindexcel();
            }

            //gvbind();
        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //required to avoid the runtime error "  
            //Control 'GridView1' of type 'GridView' must be placed inside a form tag with runat=server."  
        }

  

        protected void gvbindexcel()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("   select * from [EmployeeTask].[dbo].[DailyTask] where  " +
                                             "  TaskCompletionDate between '" + TextBox1.Text + "' and '" + TextBox2.Text + "' and TaskStatus='"+DropDownList1.SelectedItem.Text+"'" +
                                             " order by TaskCompletionDate asc ", con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con1.Close();
            if (ds.Tables[0].Rows.Count > 0)
            {
                GridView2.DataSource = ds;
                GridView2.DataBind();
            }
            else
            {
                ds.Tables[0].Rows.Add(ds.Tables[0].NewRow());
                GridView2.DataSource = ds;
                GridView2.DataBind();
                int columncount = GridView2.Rows[0].Cells.Count;
                GridView2.Rows[0].Cells.Clear();
                GridView2.Rows[0].Cells.Add(new TableCell());
                GridView2.Rows[0].Cells[0].ColumnSpan = columncount;
                GridView2.Rows[0].Cells[0].Text = "No Records Found";
            }
        }


        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = " Report" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();

            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView2.GridLines = GridLines.Both;
            GridView2.HeaderStyle.Font.Bold = true;
            GridView2.RenderControl(htmltextwrtter);
            string headerTable = @"<Table><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '5' ><b>महाराष्ट्र सहकार विकास महामंडळ मर्यादित , पुणे </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '5' ><b>Monthly Task Report </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b>" + DropDownList1.SelectedItem.Text + " Task Sheet</b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b> From  " + TextBox1.Text + "  -  " + TextBox2.Text + "</b></font></td></tr><tr></tr><tr></tr></Table>";
            Response.Write(headerTable);
            Response.Write(strwritter.ToString());
            Response.End();

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
        }

 

          protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {


            DateTime dt1 = Convert.ToDateTime(TextBox1.Text);
            DateTime dt2 = Convert.ToDateTime(TextBox2.Text);
            if (dt1 > dt2)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('From Date Should be less than To Date')", true);
            }

            else

                gvbindexcel();
            btnlogin.Visible = true;
        }



      



    }


}