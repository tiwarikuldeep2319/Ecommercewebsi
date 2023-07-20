using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project3
{
    public partial class login : System.Web.UI.Page
    {

        SqlConnection connection=new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            
            connection.Open();
            string checkMail = $"SELECT * FROM userregistr where umail='{TextBox2.Text}'";
            SqlDataReader rd = new SqlCommand(checkMail, connection).ExecuteReader();
            if(rd.Read())
            {
                if (rd["upass"].ToString() == TextBox3.Text)
                {
                    if (rd["Block"].ToString() == "false") {
                        Response.Write("<script>alert('You have been blocked from admin')</script>");
                        return;
                    }
                    Session["uid"] = rd["Rid"].ToString();
                    Response.Redirect("profile.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invailid password')</script>");
                }
            }
            else
            {
                Response.Write("<script>alert('invalid email')</script>");
            }
        }
    }
}