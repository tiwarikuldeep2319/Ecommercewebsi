using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project3.Admin
{
    public partial class Home : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["uid"]==null)
            {
                Button4.Visible= true;
                Button1.Visible = false;
                Button2.Visible = false;
                Button3.Visible = false;
                

            }
            else
            {
                Button4.Visible= false;
                Button1.Visible = true;
                Button2.Visible = true;
                Button3 .Visible = true;
                
            }

        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddCourse.aspx");
        }
       
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AllCourse.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("EditCourse.aspx");
        }

        protected void Button3_Click1(object sender, EventArgs e)
        {

        }
    }
}