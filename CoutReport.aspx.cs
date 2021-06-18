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
    public partial class CoutReport : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
        
        }

      

        protected void gvbindexcel()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("select  A.EmpName, A.BranchName, COALESCE(c.Completed, 0) as Completed, COALESCE(B.Pending, 0) as Pending, A.Total from (Select BranchName, EmpName, count(*) as Total from[EmployeeTask].[dbo].[DailyTask] where TaskCreationDate between '2019-10-01 00:00:00.000' and  '2019-10-04 00:00:00.000' group by EmpName, BranchName)A left join (Select  BranchName, EmpName, count(*) as Pending from[EmployeeTask].[dbo].[DailyTask] where TaskStatus = 'Pending' and TaskCreationDate between '2019-10-01 00:00:00.000' and  '2019-10-04 00:00:00.000' group by EmpName, BranchName)  B on A.EmpName = B.EmpName left join (Select BranchName, EmpName, count(*) as Completed from[EmployeeTask].[dbo].[DailyTask] Where TaskStatus = 'Completed' and TaskCreationDate between '2019-10-01 00:00:00.000' and  '2019-10-04 00:00:00.000' group by EmpName, BranchName) C on A.EmpName = C.EmpName", con1);
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            con1.Close();
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {
            if (TextBox2.Text != "")
            {
               
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            gvbindexcel();
        }
    }
}