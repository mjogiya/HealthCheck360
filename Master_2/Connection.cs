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

        public void insert(String fname, String lname, String email, String subject, String message)
        {
            getcon();
            cmd = new SqlCommand("insert into contact(fname, lname, email, subject, message) values('"+fname+ "','"+lname+ "','"+email+ "','"+subject+ "','"+message+"')", con);
            cmd.ExecuteNonQuery();
        }
        public void register(String name, String company, String email, String phone, String typeHos, String address, String pwd)
        {
            getcon();
            cmd = new SqlCommand("insert into Hospital(name, companyName, email, phone, typeOfHospital, address, password) values('"+name+ "', '"+company+ "', '"+email+ "','"+phone+ "', '"+typeHos+ "', '"+address+"', '"+pwd+"')", con);
            cmd.ExecuteNonQuery();
        }
        public String login(String email, String phone, String password)
        {
            getcon();
            da = new SqlDataAdapter("SELECT * from Hospital where email='" + email + "' AND phone='"+phone+"' AND password='" + password + "';", con);
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