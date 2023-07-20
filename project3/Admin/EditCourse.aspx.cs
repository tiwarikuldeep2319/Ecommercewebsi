using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;

namespace project3.Admin
{
    public partial class EditCourse : System.Web.UI.Page
    {

        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {


            if (!IsPostBack)
            {
                string PId = Request.QueryString["PId"];
                if (PId == null)
                {
                    Response.Redirect("Login.aspx");
                }
                string query = $"SELECT * FROM Addcourse  WHERE id='{PId}'";
                connection.Open();
                SqlCommand cmd = new SqlCommand(query, connection);
                SqlDataReader rd = cmd.ExecuteReader();
                if (rd.Read())
                {
                    TextBox1.Text = rd["name"].ToString();
                    TextBox4.Text = rd["price"].ToString();
                    TextBox2.Text = rd["disc"].ToString();
                    TextBox3.Text = rd["duration"].ToString();
                    TextBox5.Text = rd["slug"].ToString();
                }
                else
                {
                    Response.Redirect("ShowProduct.aspx");
                }

            }
        }
    }
}