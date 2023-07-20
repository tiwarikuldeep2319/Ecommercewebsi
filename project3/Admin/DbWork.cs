using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace project3.Admin
{
    public class DbWork
    {
        SqlConnection connection = new SqlConnection(ConfigurationManager.ConnectionStrings["connection"].ConnectionString);
        public SqlDataReader reader;
        public SqlDataReader getAllProducts()
        {
            connection.Open();
            return new SqlCommand("SELECT * FROM Addcourse", connection).ExecuteReader();
        }
        public static string genslug(string text)
        {
            text = text.Trim();
            text = text.Replace("-", "_");
            text = AddRandomNumbers(text);
            return text;
        }
        private static string AddRandomNumbers(string text)
        {
            Random random = new Random();
            int randomNumber = random.Next(10, 99);
            text += "_" + randomNumber.ToString();
            return text;
        }

        public SqlDataReader AlluserDeatils()
        {
            connection.Open();
            return new SqlCommand("SELECT * FROM userregistr", connection).ExecuteReader();
        }
    }
}