using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_2.Admin
{

    public partial class AdminLogin : System.Web.UI.Page
    {
        Connect adminCon = new Connect();
        String logInfo;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            logInfo = adminCon.login(email.Text, phone.Text, pwd.Text);
            if (logInfo == "login")
            {
//                Session["user"] = email.Text;
                Response.Write("<script>alert('Success');</script>");
                //Response.Redirect("../index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Credentials');</script>");
            }
        }
    }
}