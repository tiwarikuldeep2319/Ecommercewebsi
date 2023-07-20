using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project3.Admin
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            conn.Open();
            string checkEmail = $"SELECT * FROM logi WHERE email='{TextBox1.Text}'";
            SqlDataReader rd = new SqlCommand(checkEmail, conn).ExecuteReader();
            if (rd.Read())
            {
                if (rd["pass"].ToString() == TextBox2.Text)
                {
                    Session["uid"] = rd["id"].ToString();
                    Response.Redirect("Default.aspx");
                }
                else
                {
                    Response.Write("<script>alert('invalid password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('LOgin successfully')</script>");
            }
        }
    }
}