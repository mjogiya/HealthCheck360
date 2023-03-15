using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Master_2
{
    public partial class Trending : System.Web.UI.Page
    {
        Connection c = new Connection();
        String reportID, hospitalID;
        DataSet Reports;
        protected void Page_Load(object sender, EventArgs e)
        {
            Reports = c.ShowReports();
        }
    }
}