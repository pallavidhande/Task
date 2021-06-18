using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Task
{
    public partial class Allfiles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button15_Click1(object sender, EventArgs e)
        {
            Response.Redirect("Files.aspx");
        }

        protected void Button16_Click1(object sender, EventArgs e)
        {
           
            Response.Redirect("ABGC Files.aspx");
        }

        protected void Button17_Click(object sender, EventArgs e)
        {
            Response.Redirect("ITFILES.aspx");
        }
    }
}