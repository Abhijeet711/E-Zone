using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project
{
    public partial class usersignup : System.Web.UI.Page
    {
        String strcon = "Data Source=(LocalDB)/MSSQLLocalDB;AttachDbFilename=\"C:/Users/Abhi/Documents/ASP.NET Files/E-Commerce Project/E-Commerce Project/App_Data/DB1.mdf\";Integrated Security=True";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signup button click event.
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>alert('testing');</script>");
            //always perform database connection in try catch block.
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                //if connection is closed, open the connection.
                if(con.State == System.Data.ConnectionState.Closed)
                {
                    con.Open();
                }
                //takes two parameters, ("query",connectionObject)
                SqlCommand cmd = new SqlCommand("INSERT INTO user(name, contact_no, email, password, address, state, city, pincode) VALUES (@name, @contact_no, @email, @password, @address, @state, @city, @pincode)", con);

                //parameterized value insertion.
                cmd.Parameters.AddWithValue("@name", TextBox3.Text.Trim());
                cmd.Parameters.AddWithValue("@contact_no", TextBox4.Text.Trim());
                cmd.Parameters.AddWithValue("@email", TextBox1.Text.Trim());
                cmd.Parameters.AddWithValue("@password", TextBox2.Text.Trim());
                cmd.Parameters.AddWithValue("@address", TextBox6.Text.Trim());
                cmd.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@city", TextBox7.Text.Trim());
                cmd.Parameters.AddWithValue("@pincode", TextBox8.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('User Registration Successful. Go to User Login Page to Login');</script>");

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"');</script>");
            }
        }
    }
}