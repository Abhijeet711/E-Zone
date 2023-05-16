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
using System.IO;

namespace E_Commerce_Project
{
    public partial class WebForm3 : System.Web.UI.Page
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
            addProduct();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            updateProduct();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            deleteProduct();
        }

        void clearForm()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox4.Text = "";
            TextBox5.Text = "";
            TextBox6.Text = "";
        }

        void addProduct()
        {
            try
            {
                string filepath = "~/productinventory/products.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("productinventory/" + filename));
                filepath = "~/productinventory/" + filename;
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "INSERT INTO eproducts(pid, pname, price, brand, mfgdate, pdesc, imgurl) VALUES (@pid, @pname, @price, @brand, @mfgdate, @pdesc, @imgurl);";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@pid", TextBox1.Text);
                sqlCommand.Parameters.AddWithValue("@pname", TextBox2.Text);
                sqlCommand.Parameters.AddWithValue("@price", TextBox3.Text);
                sqlCommand.Parameters.AddWithValue("@brand", TextBox4.Text);
                sqlCommand.Parameters.AddWithValue("@mfgdate", TextBox5.Text);
                sqlCommand.Parameters.AddWithValue("@pdesc", TextBox6.Text);
                sqlCommand.Parameters.AddWithValue("@imgurl", filepath);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('Product Inserted Successfully.');</script>");
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

        void updateProduct()
        {
            try
            {
                string filepath = "~/productinventory/products.png";
                string filename = Path.GetFileName(FileUpload1.PostedFile.FileName);
                FileUpload1.SaveAs(Server.MapPath("productinventory/" + filename));
                filepath = "~/productinventory/" + filename;
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "UPDATE eproducts SET pname=@pname, price=@price, brand=@brand, mfgdate=@mfgdate, pdesc=@pdesc, imgurl=@imgurl WHERE pid=@pid";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@pid", TextBox1.Text);
                sqlCommand.Parameters.AddWithValue("@pname", TextBox2.Text);
                sqlCommand.Parameters.AddWithValue("@price", TextBox3.Text);
                sqlCommand.Parameters.AddWithValue("@brand", TextBox4.Text);
                sqlCommand.Parameters.AddWithValue("@mfgdate", TextBox5.Text);
                sqlCommand.Parameters.AddWithValue("@pdesc", TextBox6.Text);
                sqlCommand.Parameters.AddWithValue("@imgurl", filepath);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('Product Updated Successfully.');</script>");
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

        void deleteProduct()
        {
            try
            {
                //if connection is closed, open the connection.
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                //Response.Write("<script>alert('" + con.State + "');</script>");
                String str = "DELETE FROM eproducts WHERE pid=@pid";
                SqlCommand sqlCommand = new SqlCommand(str, con);
                sqlCommand.Parameters.AddWithValue("@pid", TextBox1.Text);
                sqlCommand.ExecuteNonQuery();
                Response.Write("<script>alert('Product Deleted Successfully.');</script>");
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
    }
}