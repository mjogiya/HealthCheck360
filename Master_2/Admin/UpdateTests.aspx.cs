using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace Master_2.Admin
{
    public partial class UpdateTests : System.Web.UI.Page
    {
        Connect ca = new Connect();
        Int16 testID;
        DataSet TestData;
        String reportPDF, reportURL;

        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                TestData = ca.findTest(Convert.ToInt16(Request.QueryString["tId"]));
                pName.Text = TestData.Tables[0].Rows[0]["pName"].ToString();
                pAge.Text = TestData.Tables[0].Rows[0]["pAge"].ToString();
                pGender.SelectedValue = TestData.Tables[0].Rows[0]["pGender"].ToString();
                pWeight.Text = TestData.Tables[0].Rows[0]["pWeight"].ToString();
                pHeight.Text = TestData.Tables[0].Rows[0]["pHeight"].ToString();
                pMobile.Text = TestData.Tables[0].Rows[0]["pMobile"].ToString();
                pEmail.Text = TestData.Tables[0].Rows[0]["pEmail"].ToString();
                expectDate.Text = TestData.Tables[0].Rows[0]["expectDate"].ToString();
                reportName.Text = TestData.Tables[0].Rows[0]["reportName"].ToString();
                reportType.SelectedValue = TestData.Tables[0].Rows[0]["reportType"].ToString();
                reportPrice.Text = TestData.Tables[0].Rows[0]["reportPrice"].ToString();
                hName.Text = TestData.Tables[0].Rows[0]["hName"].ToString();
                hEmail.Text = TestData.Tables[0].Rows[0]["hEmail"].ToString();
                hPhone.Text = TestData.Tables[0].Rows[0]["hPhone"].ToString();
                hAddress.Text = TestData.Tables[0].Rows[0]["hAddress"].ToString();





            }
        }
        void uploadfile()
        {
            reportURL = "./assets/PDFs/" + reportFlie.FileName;
            reportPDF = "../assets/PDFs/" + reportFlie.FileName;
            reportFlie.SaveAs(Server.MapPath(reportPDF));
        }
        protected void UpdateReport_Click(object sender, EventArgs e)
        {
            uploadfile();



        }
    }
}