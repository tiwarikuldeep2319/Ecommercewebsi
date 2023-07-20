using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;
using System.Configuration;

namespace project3
{
    public partial class coursedetail : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request["id"] == null)
            {
                Response.Redirect("~/default.aspx");
            }
        }
        protected void buynow_Click(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("login.aspx");
            }
            
            connection.Open();
            string uid = Session["uid"].ToString();
            string pid = Request.QueryString["id"];
            string date = DateTime.Now.ToString();
            string q = $"insert into Orders values('{uid}','{pid}','{date}')";
            SqlCommand cmd = new SqlCommand(q, connection);
            int i = cmd.ExecuteNonQuery();
            connection.Close();
            Response.Redirect("profile.aspx");


        }
    }
} 