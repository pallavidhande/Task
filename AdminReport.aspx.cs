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
    public partial class AdminReport : System.Web.UI.Page
    {

        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        int m = 0, m1 = 0, m2 = 0;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void gvbind()
        {
            //Select* from InOut where SentTo = N'"+Session["DeptName"]+ "'
            con1.Open();
            //" + Session["DeptName"] + "
            SqlCommand cmd = new SqlCommand("select  A.BranchName, A.EmpName ,COALESCE(c.Completed,0)as Completed ,COALESCE(B.Pending,0)as Pending,A.Total "
                                            + "from "
                                            + "(Select BranchName, EmpName, count(*) as Total from[EmployeeTask].[dbo].[DailyTask] "
                                            + "where TaskCompletionDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "' group by EmpName, BranchName)A "
                                            + "left join "
                                            + "(Select  BranchName, EmpName, count(*) as Pending from[EmployeeTask].[dbo].[DailyTask] where TaskStatus = 'Pending' and "
                                            + "TaskCompletionDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "' group by EmpName, BranchName)  B "
                                            + "on A.EmpName = B.EmpName "
                                            + "left join "
                                            + "(Select BranchName, EmpName, count(*) as Completed from[EmployeeTask].[dbo].[DailyTask] Where TaskStatus = 'Completed' and "
                                            + "TaskCompletionDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "' group by EmpName, BranchName) C "
                                            + "on A.EmpName = C.EmpName", con1);
            //SqlDataAdapter da = new SqlDataAdapter(cmd); ", con1);
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


        protected void OnDataBound(object sender, EventArgs e)
        {
            //Code To Merge Branch Name
            for (int rowIndex = GridView1.Rows.Count - 2;
                                         rowIndex >= 0; rowIndex--)
            {
                GridViewRow gvRow = GridView1.Rows[rowIndex];
                GridViewRow gvPreviousRow = GridView1.Rows[rowIndex + 1];
                gvRow.Cells[1].Style.Add("vertical-align", "middle");
                if (gvRow.Cells[1].Text ==
                                       gvPreviousRow.Cells[1].Text)
                {
                    if (gvPreviousRow.Cells[1].RowSpan < 2)
                    {
                        gvRow.Cells[1].RowSpan = 2;
                    }
                    else
                    {
                        gvRow.Cells[1].RowSpan =
                            gvPreviousRow.Cells[1].RowSpan + 1;
                    }
                    gvPreviousRow.Cells[1].Visible = false;
                }

               

            }
        }





        protected void Button1_Click(object sender, EventArgs e)
        {
              DateTime dt1 = Convert.ToDateTime(TextBox1.Text);
            DateTime dt2 = Convert.ToDateTime(TextBox2.Text);
            if (dt1 > dt2)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Alert", "alert('From Date Should be less than To Date')", true);
            }

            else
            {
            gvbind();
           
        }
         }

        protected void Button2_Click(object sender, EventArgs e)
        {
            ExportGridToExcel();
            Exportfooter();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)

        {



            // Code for Calculation Completed, Pending and Total
            if (e.Row.RowType == DataControlRowType.DataRow)

            {

                Label Completed = (Label)e.Row.FindControl("Label1");
                Label Pending = (Label)e.Row.FindControl("Label2");
                Label Total = (Label)e.Row.FindControl("Label3");

                m = m + int.Parse(Completed.Text);
                m1 = m1 + int.Parse(Pending.Text);
                m2 = m2 + int.Parse(Total.Text);


            }

            // Invisibling the first three columns of second row header (normally created on binding)
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Visible = false; // Invisibiling Year Header Cell
                e.Row.Cells[1].Visible = false; // Invisibiling Period Header Cell
                e.Row.Cells[2].Visible = false; // Invisibiling Audited By Header Cell
            }

            // Code for Footer
            if (e.Row.RowType == DataControlRowType.Footer)

            {
                e.Row.Cells.Clear();
                TableCell tbc = new TableCell();
                tbc.ColumnSpan = 3;
                tbc.Font.Bold = true;
                tbc.HorizontalAlign = HorizontalAlign.Right;
                tbc.VerticalAlign = VerticalAlign.Middle;
                tbc.Text = "Grand Total";
                e.Row.Cells.Add(tbc);
                TableCell tbc1 = new TableCell();
                tbc1.Font.Bold = true;
                tbc1.HorizontalAlign = HorizontalAlign.Center;
                tbc.VerticalAlign = VerticalAlign.Middle;
                tbc1.Text = m.ToString();
                e.Row.Cells.Add(tbc1);
                TableCell tbc2 = new TableCell();
                tbc2.Font.Bold = true;
                tbc2.HorizontalAlign = HorizontalAlign.Center;
                tbc.VerticalAlign = VerticalAlign.Middle;
                tbc2.Text = m1.ToString();
                e.Row.Cells.Add(tbc2);
                TableCell tbc3 = new TableCell();
                tbc3.Font.Bold = true;
                tbc3.HorizontalAlign = HorizontalAlign.Center;
                tbc.VerticalAlign = VerticalAlign.Middle;
                tbc3.Text = m2.ToString();
                e.Row.Cells.Add(tbc3);

            }

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            /* Confirms that an HtmlForm control is rendered for the specified ASP.NET
               server control at run time. */
        }
        private void ExportGridToExcel()
        {
            con1.Open();
           
            SqlCommand cmd = new SqlCommand("select  A.BranchName, A.EmpName ,COALESCE(c.Completed,0)as Completed ,COALESCE(B.Pending,0)as Pending,A.Total "
                                            + "from "
                                            + "(Select BranchName, EmpName, count(*) as Total from[EmployeeTask].[dbo].[DailyTask] "
                                            + "where TaskCompletionDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "' group by EmpName, BranchName)A "
                                            + "left join "
                                            + "(Select  BranchName, EmpName, count(*) as Pending from[EmployeeTask].[dbo].[DailyTask] where TaskStatus = 'Pending' and "
                                            + "TaskCompletionDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "' group by EmpName, BranchName)  B "
                                            + "on A.EmpName = B.EmpName "
                                            + "left join "
                                            + "(Select BranchName, EmpName, count(*) as Completed from[EmployeeTask].[dbo].[DailyTask] Where TaskStatus = 'Completed' and "
                                            + "TaskCompletionDate between '" + TextBox1.Text + "' and  '" + TextBox2.Text + "' group by EmpName, BranchName) C "
                                            + "on A.EmpName = C.EmpName", con1);
         
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con1.Close();
            Response.Clear();
            Response.AddHeader("content-disposition", "attachment; filename=" + " Report" + DateTime.Now + ".xls");
            Response.Charset = "";
            Response.Cache.SetCacheability(HttpCacheability.NoCache);
            Response.ContentType = "application/vnd.xls";
            System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            GridView1.DataSource = ds;
            GridView1.DataBind();
            GridView1.RenderControl(htmlWrite);
            string headerTable = @"<Table><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b>MAHARASHTRA COOPERATIVE DEVELOPMENT CORPORATION LIMITED,PUNE </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b>Action Taken Report </b></font></td></tr><tr><td style=text-align:center; font-weight:bold; colspan=6><font face = 'Times New Roman' size = '4' ><b> From  " + TextBox1.Text + "  -  " + TextBox2.Text + "</b></font></td></tr></Table>";
            Response.Write(headerTable);
            Response.Write(stringWrite.ToString());
            Response.End();


        }

        private void Exportfooter()
        {
            //Response.Clear();
            //Response.AddHeader("content-disposition", "attachment; filename=" + "Report" + ".xls");
            //Response.Charset = "";
            //Response.Cache.SetCacheability(HttpCacheability.NoCache);
            //Response.ContentType = "application/vnd.xls";
            //System.IO.StringWriter stringWrite = new System.IO.StringWriter();
            //System.Web.UI.HtmlTextWriter htmlWrite = new HtmlTextWriter(stringWrite);
            //DataSet ds = new DataSet();
            //GridView1.DataSource = ds;
            //GridView1.DataBind();
            //GridView1.RenderControl(htmlWrite);
            //Response.Write(stringWrite.ToString());
            //Response.End();


          
        }


        protected void GridView1_RowCreated(object sender, GridViewRowEventArgs e)
        {
            // Adding a column manually once the header created
            if (e.Row.RowType == DataControlRowType.Header) // If header created
            {
                GridView ProductGrid = (GridView)sender;

                // Creating a Row
                GridViewRow HeaderRow = new GridViewRow(0, 0, DataControlRowType.Header, DataControlRowState.Insert);

                //Adding Year Column
                TableCell HeaderCell = new TableCell();
                HeaderCell.Text = "Sr.No.";
                HeaderCell.HorizontalAlign = HorizontalAlign.Center;
                HeaderCell.Style.Add("vertical-align", "middle");
                HeaderCell.Font.Bold = true;
                HeaderCell.RowSpan = 2; // For merging first, second row cells to one      
                HeaderRow.Cells.Add(HeaderCell);

                //Adding Period Column
                HeaderCell = new TableCell();
                HeaderCell.Text = "Employee Name";
                HeaderCell.HorizontalAlign = HorizontalAlign.Center;
                HeaderCell.Style.Add("vertical-align", "middle");
                HeaderCell.Font.Bold = true;
                HeaderCell.RowSpan = 2;
                HeaderRow.Cells.Add(HeaderCell);

                //Adding Audited By Column
                HeaderCell = new TableCell();
                HeaderCell.Text = "Branch Name";
                HeaderCell.HorizontalAlign = HorizontalAlign.Center;
                HeaderCell.Style.Add("vertical-align", "middle");
                HeaderCell.Font.Bold = true;
                HeaderCell.RowSpan = 2;
                HeaderRow.Cells.Add(HeaderCell);

                //Adding Revenue Column
                HeaderCell = new TableCell();
                HeaderCell.Text = "Task Count";
                HeaderCell.HorizontalAlign = HorizontalAlign.Center;
                HeaderCell.Style.Add("vertical-align", "middle");
                HeaderCell.Font.Bold = true;
                HeaderCell.ColumnSpan = 3; // For merging three columns (Completed, Pending, Total)
                HeaderRow.Cells.Add(HeaderCell);

                //Adding the Row at the 0th position (first row) in the Grid
                ProductGrid.Controls[0].Controls.AddAt(0, HeaderRow);
            }
        }
    }
}