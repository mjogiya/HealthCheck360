using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_2.Sign_in_up
{
    public partial class Login1 : System.Web.UI.Page
    {
        Connection log = new Connection();
        String logInfo;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login_Click(object sender, EventArgs e)
        {
            logInfo = log.login(email.Text, phone.Text, pwd.Text);
            if (logInfo == "login")
            {
                Session["user"] = email.Text;
                Response.Redirect("../index.aspx");
            }
            else
            {
                Response.Write("<script>alert('Wrong Credentials');</script>");
            }
        }
    }
}