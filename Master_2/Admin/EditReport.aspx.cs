using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Master_2.Admin
{
   
    public partial class Tests : System.Web.UI.Page
    {
        Connection c = new Connection();
        Connect ca = new Connect();
        Int16 reportID;
        DataSet ReportData;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {

            ReportData = c.findReport(Convert.ToInt32(Request.QueryString["rId"]));
            repName.Text = ReportData.Tables[0].Rows[0]["name"].ToString();
            repPrice.Text = ReportData.Tables[0].Rows[0]["price"].ToString();
            repType.Text = ReportData.Tables[0].Rows[0]["category"].ToString();
            }
            reportID = Convert.ToInt16(Request.QueryString["rId"]);
        }

        protected void UpdateReport_Click(object sender, EventArgs e)
        {
            ca.updateReport(reportID, repName.Text, repPrice.Text, repType.SelectedValue);

        }
    }
}