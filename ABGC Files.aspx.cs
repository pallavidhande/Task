using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace Task
{
    public partial class ABGC_Files : System.Web.UI.Page
    {
        SqlConnection con1 = new SqlConnection("server=DESKTOP-M3LCTVJ;database=EmployeeTask;integrated Security=SSPI;");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                gvbind();
            }

        }


        protected void gvbind()
        {
            con1.Open();
            SqlCommand cmd = new SqlCommand("SELECT TOP 1000 [अ क्र] ,[मुळ धारीका क्रं] ,[सांकेतीक क्रमांक] ,[धारीका विषय],[शाखा] ,[गठठा क्रं] ,[अभिलेख कक्ष],[रॅक क्रमांक] ,[कप्पा क्रमांक] ,[कप्यातील क्रमांक] ,[विभाग प्रमुख -कार्यकाळ धारिका] ,[धारिका रंग] ,[ठिकाण-नियमित उपयोगात / निकाली व गठ्यात बंद / थकीत / स्तगीत] ,[F14] ,[F15]fROM [EmployeeTask].[dbo].[Training]", con1);
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
    }
}