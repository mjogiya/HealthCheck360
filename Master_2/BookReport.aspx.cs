using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Master_2
{
    public partial class BookReport : System.Web.UI.Page
    {
        Connection c = new Connection();
        String reportID, hospitalID;
        DataSet HospitalData, ReportData;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            HospitalData =  c.findHospital(Session["user"].ToString());
            ReportData = c.findReport(Convert.ToInt32(Request.QueryString["rId"]));
            reportID = ReportData.Tables[0].Rows[0]["id"].ToString();
            hospitalID = HospitalData.Tables[0].Rows[0]["id"].ToString();
            hName.Text = HospitalData.Tables[0].Rows[0]["name"].ToString();
            hEmail.Text = HospitalData.Tables[0].Rows[0]["email"].ToString();
            hPhone.Text = HospitalData.Tables[0].Rows[0]["phone"].ToString();
            hAddress.Text = HospitalData.Tables[0].Rows[0]["address"].ToString();
            reportName.Text = ReportData.Tables[0].Rows[0]["name"].ToString();
            reportPrice.Text = ReportData.Tables[0].Rows[0]["price"].ToString();
            reportType.Text = ReportData.Tables[0].Rows[0]["category"].ToString();

        }

        protected void bookReport_Click(object sender, EventArgs e)
        {
            c.addTestReport(pName.Text, pAge.Text, pGender.SelectedValue, pWeight.Text, pHeight.Text, pMobile.Text, pEmail.Text, expectDate.Text, reportID, reportName.Text, reportType.SelectedValue, reportPrice.Text, hospitalID, hName.Text, hEmail.Text, hPhone.Text, hAddress.Text);
        }
    }
}