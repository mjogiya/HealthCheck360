using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_2.Sign_in_up
{
    public partial class Login : System.Web.UI.Page
    {
        Connection rg = new Connection();
        
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void register_Click(object sender, EventArgs e)
        {
            rg.register(name.Text, company.Text, email.Text, phone.Text, typeOfHos.SelectedValue.ToString(), address.Text, pwd.Text);    
            
        }
    }
}