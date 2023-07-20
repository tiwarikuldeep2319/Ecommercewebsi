using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml.Linq;

namespace project3
{
    public partial class profile_aspx : System.Web.UI.Page
    {
        SqlConnection connection=new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //Profile
            if (Session["uid"] == null)
            {
                Response.Redirect("login.aspx");
            }
            string uid = Session["uid"].ToString();
            string query = $"SELECT * FROM userregistr where Rid='{uid}'";
            connection.Open();
            SqlDataReader reader=new SqlCommand(query, connection).ExecuteReader();
            reader.Read();
            name.InnerText =reader["uname"].ToString();
            email.InnerText = reader["umail"].ToString();
            connection.Close();
            //profile end....
          
           string q = $"select * from Addcourse join Orders on Addcourse.id = Orders.pid where Orders.uid = '{uid}'";
            SqlDataAdapter da = new SqlDataAdapter(new SqlCommand(q,connection));
            DataTable dataTable = new DataTable();
            da.Fill(dataTable);
            DataTable data = new DataTable();

            data.Columns.Add(new DataColumn("srno"));
            data.Columns.Add(new DataColumn("Name"));
            data.Columns.Add(new DataColumn("date"));
            data.Columns.Add(new DataColumn("image"));
            data.Columns.Add(new DataColumn("price"));
            data.Columns.Add(new DataColumn("active"));
            int srno = 1;
            foreach (DataRow row in dataTable.Rows)
            {
                DateTime olddate = Convert.ToDateTime(row["date"].ToString());
                DateTime newdate = DateTime.Now;
                int d = (newdate - olddate).Days;
                string name = row["name"].ToString();
                string price = row["price"].ToString();
                string Image = row["image"].ToString();
                string date = row["date"].ToString();
                int duration = Convert.ToInt32(row["duration"].ToString());
                string active = d < duration ? (duration - d).ToString() : "expired";
                DataRow myDataRow = data.NewRow();
                myDataRow["srno"] = srno++;
                myDataRow["Name"] = name;
                myDataRow["price"] = price;
                myDataRow["date"] = date;
                myDataRow["image"] ="/Admin/imge/hh/"+Image;
                myDataRow["active"] = active;
                data.Rows.Add(myDataRow);
            }
           GridView1.DataSource= data;
            GridView1.DataBind();
        }
    }
}


        
    
