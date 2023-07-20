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
    public partial class AddCourse : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"] == null)
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected void Submit_Click(object sender, EventArgs e)
        {
            FileUpload1.SaveAs(Server.MapPath("~/Admin/imge/hh/" + FileUpload1.FileName));
            string productName = TextBox1.Text;
            string productdes = TextBox2.Text;
            string productduration = TextBox3.Text;
            string productprice = TextBox4.Text;
            string productImage = FileUpload1.FileName;
            string slugText = TextBox5.Text;
            string slug = DbWork.genslug(slugText);
            string query = $"INSERT INTO Addcourse VALUES('{productName}','{productdes}','{productduration}','{productprice}','{productImage}','{slug}')";
            conn.Open();
            new SqlCommand(query, conn).ExecuteNonQuery();
        }
    }
}