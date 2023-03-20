using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Master_2
{
    public partial class Contact : System.Web.UI.Page
    {
        Connection cs = new Connection();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            cs.insert(name.Text, lastname.Text, email.Text, subject.Text, message.Text);
        }
    }
}