using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace project3
{
    public class DbWork
    {
        SqlConnection connection=new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        public SqlDataReader reader;
        public SqlDataReader Allcourse()
        {
            connection.Open();
            return new SqlCommand("SELECT * FROM Addcourse",connection).ExecuteReader();
        }
        public SqlDataReader courseDetails(string cid)
        {
            connection.Open();
            return new SqlCommand($"SELECT * FROM Addcourse where id='{cid}'", connection).ExecuteReader();
        }

    }
}