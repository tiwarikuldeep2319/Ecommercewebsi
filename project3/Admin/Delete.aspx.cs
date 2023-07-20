using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace project3.Admin
{
    public partial class Delete : System.Web.UI.Page
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            string PId = Request.QueryString["PId"];
            if(PId== null )
            {
                Response.Redirect("AllCourse.aspx");
            }
            string query = $"DELETE FROM AddCourse where id='{PId}'";
            connection.Open();
            new SqlCommand(query,connection).ExecuteNonQuery();
            Response.Redirect("AllCourse.aspx");

        }
    }
}