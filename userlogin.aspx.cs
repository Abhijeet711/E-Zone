using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlCommand = System.Data.SqlClient.SqlCommand;
using SqlConnection = System.Data.SqlClient.SqlConnection;

namespace E_Commerce_Project
{
    public partial class userlogin : System.Web.UI.Page
    {
        static String strcon = "Data Source=Abhi-Laptop\\SQLEXPRESS;Initial Catalog=DB1;Integrated Security=true; TrustServerCertificate=true";
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                String sql = "SELECT * FROM eusers WHERE email='"+TextBox1.Text+"' AND password='"+TextBox2.Text+"'";
                SqlCommand sqlCommand = new SqlCommand(sql, con);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                if(reader.HasRows) { 
                    while (reader.Read())
                    {
                        Response.Write("<script>alert('Login Successful.');</script>");
                        //session variable named as uname
                        Session["email"] = reader.GetValue(2).ToString();
                        Session["name"] = reader.GetValue(0).ToString();
                        Session["role"] = "euser";
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Credentials.');</script>");
                }
            }
            catch (Exception ex) {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}