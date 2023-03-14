using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_2.Admin
{
    public partial class NewReport : System.Web.UI.Page
    {
        Connect c = new Connect();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void AddReport_Click(object sender, EventArgs e)
        {
            c.addReport(repName.Text, repPrice.Text, repType.SelectedValue);
            Response.Write("<script>alert('Report Added Successfully')</script>");
        }
    }
}