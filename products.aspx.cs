using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project
{
    public class Product
    {
        public int Id { get; set; }
        public int Quantity { get; set; }
    }
    public partial class products : System.Web.UI.Page
    {
        public List<Product> product_list = new List<Product>();
        protected void Page_Load(object sender, EventArgs e)
        {
            GridView2.DataBind();
        }
        protected void LinkButton1_Click(object sender, EventArgs e)
        {

            if (Session["email"] != null)
            {
                LinkButton linkButton = (LinkButton)sender;
                GridViewRow row = (GridViewRow)linkButton.NamingContainer;
                string quantityValue = Request.Form[row.FindControl("TextBox1").UniqueID];
                string productValue = Request.Form[row.FindControl("prod_id").UniqueID];

                //if there is no product list in session, create new product list.
                if (Session["product_list"] == null)
                {
                    Session["product_list"] = product_list;

                }
                int quantity;
                int product_id;
                int.TryParse(productValue, out product_id);
                int.TryParse(quantityValue, out quantity);

                List<Product> sessionProductList = (List<Product>)Session["product_list"];
                Product myProduct = new Product();
                myProduct.Id = product_id;
                myProduct.Quantity = quantity;
                sessionProductList.Add(myProduct);
                Session["product_list"] = sessionProductList;
                Response.Write("<script>alert('quantity is: " + sessionProductList.Count + " and " + product_id + "');</script>");
                //Response.Write("<script>alert('Product ID: "+pid+". Total items in cart are: '"+ sessionProductList.Count + ");</script>");
                //Response.Write("<script>alert('Product" + sessionProductList + ");</script>");
            }
            else
            {
                Response.Redirect("userlogin.aspx");
            }
        }
    }
}