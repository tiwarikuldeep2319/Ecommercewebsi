using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics.Eventing.Reader;

namespace project3
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
            protected void Page_Load(object sender, EventArgs e)
        {
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            connection.Open();
            string checkMAil = $"select * from userregistr where umail='{TextBox2.Text}'";
            if (new SqlCommand(checkMAil, connection).ExecuteReader().Read()) 
            {
                Response.Write("<script>alert('Email is already exist...')</script>");
            }
          
            else
            {
                connection.Close();
                connection.Open();
                string query = $"INSERT INTO userregistr (uname,umail,upass) VALUES('{TextBox1.Text}','{TextBox2.Text}','{TextBox3.Text}')";
                new SqlCommand(query,connection).ExecuteNonQuery();
                Response.Write("<script>alert('Register successfully')</script>");


            }
        }

      
    }
}