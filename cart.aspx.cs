using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using SqlCommand = System.Data.SqlClient.SqlCommand;
using Sqlconection = System.Data.SqlClient.SqlConnection;
using System.IO;

namespace E_Commerce_Project
{
    public partial class cart : System.Web.UI.Page
    {
        static String strcon = "Data Source=Abhi-Laptop\\SQLEXPRESS;Initial Catalog=DB1;Integrated Security=true; TrustServerCertificate=true";
        Sqlconection con = new Sqlconection(strcon);
        protected void Page_Load(object sender, EventArgs e)
        {

            //Response.Write("<script>alert('dd');</script>");
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }


            if (Session["product_list"] != null)
            {
                //Response.Write("<script>alert('hi in');</script>");

                List<Product> sessionProductList = (List<Product>)Session["product_list"];
                DataTable dt = new DataTable();
                dt.Columns.Add("ProductId");
                dt.Columns.Add("ProductName");
                dt.Columns.Add("Price");
                dt.Columns.Add("Quantity");
                dt.Columns.Add("ImageURL");

                int grand_quantity = 0;
                int grand_total = 0;

                foreach (Product product in sessionProductList)
                {
                    int productId = product.Id;
                    int quantity = product.Quantity;

                    // Retrieve data from the database for the current product ID
                    SqlCommand cmd = new SqlCommand("SELECT pid, pname, price, imgurl FROM eproducts WHERE pid = @ProductId", con);
                    cmd.Parameters.AddWithValue("@ProductId", productId);
                    SqlDataAdapter adapter = new SqlDataAdapter(cmd);
                    DataTable productDt = new DataTable();
                    adapter.Fill(productDt);

                    // Add a new row to the DataTable with the product data
                    DataRow row = dt.NewRow();
                    row["ImageURL"] = productDt.Rows[0]["imgurl"].ToString();
                    row["ProductId"] = productId;
                    row["ProductName"] = productDt.Rows[0]["pname"].ToString();
                    row["Price"] = productDt.Rows[0]["price"].ToString();
                    row["Quantity"] = quantity;

                    dt.Rows.Add(row);

                    int price = int.Parse(productDt.Rows[0]["price"].ToString());
                    int for_grand_price = price * quantity;
                    grand_quantity += quantity;
                    Session["grand_quantity"] = grand_quantity;

                    grand_total += for_grand_price;
                    Session["grand_total"] = grand_total;
                }
                // Bind the DataTable to the GridView control
                GridView1.DataSource = dt;
                GridView1.DataBind();

                Label2.Text = grand_quantity.ToString();
                Label1.Text = grand_total.ToString();
            }
        }

    }
}