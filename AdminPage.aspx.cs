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
    public partial class AdminPage : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {

                gvbindexcel();
                
            }

            else
            {

            }

        }


        protected void gvbindexcel()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("   select top(100)* from [EmployeeTask].[dbo].[DailyTask]  order by TaskCompletionDate desc", con1);
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

        protected void GridView2_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView2.PageIndex = e.NewPageIndex;
            this.gvbindexcel();
        }



        //protected void OnDataBound(object sender, EventArgs e)
        //{
        //    for (int i = GridView2.Rows.Count - 1; i > 0; i--)
        //    {
        //        GridViewRow row = GridView2.Rows[i];
        //        GridViewRow previousRow = GridView2.Rows[i - 1];
        //        for (int j = 0; j < row.Cells.Count; j++)
        //        {
        //            if (row.Cells[j].Text == previousRow.Cells[j].Text)
        //            {
        //                if (previousRow.Cells[j].RowSpan == 0)
        //                {
        //                    if (row.Cells[j].RowSpan == 0)
        //                    {
        //                        previousRow.Cells[j].RowSpan += 2;
        //                    }
        //                    else
        //                    {
        //                        previousRow.Cells[j].RowSpan = row.Cells[j].RowSpan + 1;
        //                    }
        //                    row.Cells[j].Visible = false;
        //                }
        //            }
        //        }
        //    }
        //}



    }
}