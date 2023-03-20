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
        public void addReport(String name, String price, String category)
        {
            getcon();
            cmd = new SqlCommand("insert into report(name, price, category) values('" + name + "','" + price + "','" + category + "')", con);
            cmd.ExecuteNonQuery();
        }

        public void updateReport(Int16 id, String name, String price, String category)
        {
            getcon();
            cmd = new SqlCommand("update report set name='" + name + "', price='" + price + "', category='" + category + "' where id=" + id + "", con);
            cmd.ExecuteNonQuery();
        }
        public DataSet findTest(Int16 id)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * from tests where id='" + id + "'", con);
            ds = new DataSet();
            da.Fill(ds);

            return ds;
        }
        public void updateTest(Int16 id, String status, String filename, String remarks)
        {
            getcon();
            cmd = new SqlCommand("update tests set reportStatus='" + status + "', reportFile='" + filename + "', Remarks='" + remarks + "' where id='" + id + "';",con);
            cmd.ExecuteNonQuery();
        }
    }
}