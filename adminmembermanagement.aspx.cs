using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SqlCommand = System.Data.SqlClient.SqlCommand;
using SqlConnection = System.Data.SqlClient.SqlConnection;

namespace E_Commerce_Project
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        static String strcon = "Data Source=Abhi-Laptop\\SQLEXPRESS;Initial Catalog=DB1;Integrated Security=true; TrustServerCertificate=true";
        SqlConnection con = new SqlConnection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        //add button
        protected void Button1_Click(object sender, EventArgs e)
        {
            addUser();
        }

        //update button
        protected void Button2_Click(object sender, EventArgs e)
        {
            updateUser();
        }

        //remove button
        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteUser();
        }

        //search button
        protected void Button4_Click(object sender, EventArgs e)
        {
            searchUser();
        }

        void addUser()
        {
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
                sqlCommand.Parameters.AddWithValue("@address", TextBox7.Text);
                sqlCommand.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                sqlCommand.Parameters.AddWithValue("@city", TextBox5.Text);
                sqlCommand.Parameters.AddWithValue("@pincode", TextBox6.Text);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('User Inserted Successfully.');</script>");
                clearForm();
                GridView1.DataBind();
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

        void updateUser()
        {
            try
            {
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "UPDATE eusers SET name=@name, contact_no=@contact_no, email=@email, password=@password, address=@address, state=@state, city=@city, pincode=@pincode WHERE email=@email";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@name", TextBox1.Text);
                sqlCommand.Parameters.AddWithValue("@contact_no", TextBox2.Text);
                sqlCommand.Parameters.AddWithValue("@email", TextBox3.Text);
                sqlCommand.Parameters.AddWithValue("@password", TextBox4.Text);
                sqlCommand.Parameters.AddWithValue("@address", TextBox7.Text);
                sqlCommand.Parameters.AddWithValue("@state", DropDownList1.SelectedItem.Value);
                sqlCommand.Parameters.AddWithValue("@city", TextBox5.Text);
                sqlCommand.Parameters.AddWithValue("@pincode", TextBox6.Text);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('User Updated Successfully.');</script>");
                clearForm();
                GridView1.DataBind();
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

        void deleteUser()
        {
            try
            {
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "DELETE FROM eusers WHERE email=@email";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@email", TextBox3.Text);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('User Deleted Successfully.');</script>");
                clearForm();
                GridView1.DataBind();
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

        void searchUser()
        {
            try
            {
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "SELECT * FROM eusers WHERE email=@email";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@email", TextBox3.Text);
                sqlCommand.ExecuteNonQuery();
                SqlDataReader reader = sqlCommand.ExecuteReader();
                if (reader.HasRows)
                {
                    while (reader.Read())
                    {
                        TextBox1.Text = reader.GetString(0).ToString();
                        TextBox2.Text = reader.GetString(1).ToString();
                        TextBox3.Text = reader.GetString(2).ToString();
                        TextBox4.Text = reader.GetString(3).ToString();
                        TextBox5.Text = reader.GetString(6).ToString();
                        TextBox6.Text = reader.GetString(7).ToString();
                        TextBox7.Text = reader.GetString(4).ToString();
                    }
                }
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

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
            TextBox7.Text = "";
            DropDownList1.SelectedIndex = 0;
        }
    }
}