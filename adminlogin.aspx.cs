using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project
{
    public partial class adminlogin : System.Web.UI.Page
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
                String sql = "SELECT * FROM eadmin WHERE username='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'";
                SqlCommand sqlCommand = new SqlCommand(sql, con);
                SqlDataReader reader = sqlCommand.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        Response.Write("<script>alert('Admin Login Successful.');</script>");
                        Session["role"] = "admin";
                    }
                    Response.Redirect("homepage.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Invalid Admin Credentials.');</script>");
                }
            }
            catch (Exception ex)

            {
            }
        }
    }
}