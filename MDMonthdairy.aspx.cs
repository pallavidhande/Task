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
    public partial class MDMonthdairy : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            lblname.Visible = false;

            if (!IsPostBack)
            {
                DropDownList2.Items.Insert(0, new ListItem("Please select", ""));
                string com = "Select distinct EmpName from [EmployeeTask].[dbo].[DailyTask] order by EmpName asc";
                SqlDataAdapter adpt = new SqlDataAdapter(com, con1);
                DataTable dt = new DataTable();
                adpt.Fill(dt);
                DropDownList2.DataSource = dt;
                DropDownList2.DataBind();
                DropDownList2.DataTextField = "EmpName";
                DropDownList2.DataValueField = "EmpName";

                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("Please select", ""));
            }



            String Userid = Session["Userid"].ToString();
            Label1.Text = Session["Userid"].ToString();
       //     btnlogin.Visible = false;

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
            SqlCommand cmd = new SqlCommand("   select * from [EmployeeTask].[dbo].[DailyTask] where  EmpName= '"+ DropDownList2.SelectedItem.Text+ "' " +
                                             " and TaskCompletionDate between '" + TextBox1.Text + "' and '" + TextBox2.Text + "'" +
                                             " order by TaskCompletionDate asc ", con1);
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


        private void ExportGridToExcel()
        {
            Response.Clear();
            Response.Buffer = true;
            Response.ClearContent();
            Response.ClearHeaders();
            Response.Charset = "";
            string FileName = "Monthly Report" + DateTime.Now + ".xls";
            StringWriter strwritter = new StringWriter();

            HtmlTextWriter htmltextwrtter = new HtmlTextWriter(strwritter);
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.ms-excel";
            Response.AddHeader("Content-Disposition", "attachment;filename=" + FileName);
            GridView1.GridLines = GridLines.Both;
            GridView1.HeaderStyle.Font.Bold = true;
            GridView1.RenderControl(htmltextwrtter);
            string headerTable = @"<Table><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '5' ><b>महाराष्ट्र सहकार विकास महामंडळ मर्यादित , पुणे </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '5' ><b>Monthly Task Report of </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b>" + Session["Userid"].ToString() + " </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b> From  " + TextBox1.Text + "  -  " + TextBox2.Text + "</b></font></td></tr><tr></tr><tr></tr></Table>";
            Response.Write(headerTable);
            Response.Write(strwritter.ToString());
            Response.End();

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();

        }

        //protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        //{
        //    GridView1.PageIndex = e.NewPageIndex;
        //    this.gvbind();
        //}

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {
            if (TextBox1.Text != "")
            {

            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
                //gvbind();
                gvbindexcel();
               
                //GridView1.Visible = true;

            }
        }


        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblname.Visible = true;
            lblname.Text = DropDownList2.SelectedItem.Text;
            gvbindexcel();

        }

    }
}