using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;


namespace Master_2
{
    public class Connection
    {
        String s = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=E:\Healthcheck\Master_2\App_Data\Health.mdf;Integrated Security=True";
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;
        DataSet ds;
        
        void getcon()
        {
            con = new SqlConnection(s);
            con.Open();
        }

        void insert(String fname, String lname, String email, String subject, String message)
        {
            getcon();
            cmd = new SqlCommand("insert into contact(fname, lname, email, subject, message) values() ",con);
        }
    }
}