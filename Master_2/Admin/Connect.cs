using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Master_2.Admin
{
    public class Connect
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|Health.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }
        public String login(String email, String phone, String password)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * from admin where email='" + email + "' AND phone='" + phone + "' AND pwd='" + password + "';", con);
            ds = new DataSet();
            da.Fill(ds);
            int i = ds.Tables[0].Rows.Count;
            if (i == 1)
            {
                return "login";
            }
            else
            {
                return "login falied";
            }

        }
    }
}