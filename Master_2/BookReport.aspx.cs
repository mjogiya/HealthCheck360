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
        DataSet HospitalData;
        String name;

        protected void Page_Load(object sender, EventArgs e)
        {
            HospitalData =  c.findHospital();

            name = HospitalData.Tables["0"].Rows[0]["name"].ToString();
            //HData[1] = ds.Tables[0].Rows[0]["name"].ToString();
            //HData[2] = ds.Tables[0].Rows[0]["email"].ToString();
            //HData[3] = ds.Tables[0].Rows[0]["address"].ToString();
            Response.Write(name);
        }

        protected void bookReport_Click(object sender, EventArgs e)
        {
            c.addTestReport(pName.Text, pAge.Text, pGender.Text, pWeight.Text, pHeight.Text, pMobile.Text, pEmail.Text, expectDate.Text, reportID, reportName.Text, reportType.SelectedValue, reportPrice.Text, hospitalID, hName.Text, hEmail.Text, hAddress.Text);
        }
    }
}