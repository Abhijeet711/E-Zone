using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace E_Commerce_Project
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            try { 
                if (Session["role"].Equals(""))
                {
                    LinkButton1.Visible = true; //user login button
                    LinkButton2.Visible = true; //sign up user button
                    LinkButton3.Visible = false; //logout button
                    LinkButton5.Visible = false; //hello user button
                }
                else if (Session["role"].Equals("euser"))
                {
                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false; //sign up user button
                    LinkButton4.Visible = false; //admin login button

                    LinkButton3.Visible = true; //logout button
                    LinkButton5.Visible = true; //hello user button
                    LinkButton5.Text = "Hello " + Session["name"].ToString();
                }
                else if (Session["role"].Equals("admin"))
                {
                    LinkButton1.Visible = false; //user login button
                    LinkButton2.Visible = false; //sign up user button
                    LinkButton4.Visible = false; //admin login button

                    LinkButton3.Visible = true; //logout button
                    LinkButton5.Visible = true; //hello user button
                    LinkButton5.Text = "Hello Admin";
                }
            }
            catch(Exception ex) { 
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Response.Redirect("userlogin.aspx");
        }

        protected void LinkButton2_Click(object sender, EventArgs e)
        {
            Response.Redirect("usersignup.aspx");
        }

        protected void LinkButton3_Click(object sender, EventArgs e)
        {
            Session["email"] = "";
            Session["name"] = "";
            Session["role"] = "";
            LinkButton1.Visible = true; //user login button
            LinkButton2.Visible = true; //sign up user button
            LinkButton4.Visible = true; //admin login button

            LinkButton3.Visible = false; //logout button
            LinkButton5.Visible = false; //hello user button
            Response.Redirect("homepage.aspx");
        }

        protected void LinkButton4_Click(object sender, EventArgs e)
        {
            LinkButton4.Visible = false; //admin login button
            Response.Redirect("adminlogin.aspx");
        }
    }
}