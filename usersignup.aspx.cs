using Microsoft.Data.SqlClient;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SqlCommand = Microsoft.Data.SqlClient.SqlCommand;
using SqlConnection = Microsoft.Data.SqlClient.SqlConnection;

namespace E_Commerce_Project
{
    public partial class usersignup : System.Web.UI.Page
    {
        //static String strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        static String strcon = "Data Source=Abhi-Laptop\\SQLEXPRESS;Initial Catalog=DB1;Integrated Security=true; TrustServerCertificate=true";

        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //signup button click event.
        protected void Button2_Click(object sender, EventArgs e)
        {
            userSignUp();   
        }

        void userSignUp()
        {
            //Response.Write("<script>alert('testing');</script>");
            try
            {
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "INSERT INTO eusers(name, contact_no, email, password, address, state, city, pincode) VALUES (@name, @contact_no, @email, @password, @address, @state, @city, @pincode);";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@name", TextBox1.Text);
                sqlCommand.Parameters.AddWithValue("@contact_no", TextBox2.Text);
                sqlCommand.Parameters.AddWithValue("@email", TextBox3.Text);
                sqlCommand.Parameters.AddWithValue("@password", TextBox4.Text);
                sqlCommand.Parameters.AddWithValue("@address", TextBox5.Text);
                sqlCommand.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                sqlCommand.Parameters.AddWithValue("@city", TextBox6.Text);
                sqlCommand.Parameters.AddWithValue("@pincode", TextBox7.Text);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('User Registration Successful! Please go to User Login Page for Login.');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
            finally
            {
                con.Close();
            }
        }
    }
}