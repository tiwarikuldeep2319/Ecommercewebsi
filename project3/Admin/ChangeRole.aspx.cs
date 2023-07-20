using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace project3.Admin
{
    public partial class ChangeRole : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            var did = Request.QueryString["id"];
            var daction = Request.QueryString["action"];
            string query = $"update userregistr set Block='{daction}' where Rid='{did}'";
            conn.Open();
            new SqlCommand(query, conn).ExecuteNonQuery();
            conn.Close();
            Response.Redirect("users.aspx");
        }
    }
}