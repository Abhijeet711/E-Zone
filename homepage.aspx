<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="homepage.aspx.cs" Inherits="E_Commerce_Project.homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--WE PLACE ALL OUR CONTENT HERE--%>
    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
        }

        section {
            padding: 40px 0;
            text-align: center;
        }

        h1 {
            font-size: 24px;
            margin: 0;
        }

        h2 {
            font-size: 20px;
        }

        h4 {
            font-size: 16px;
        }

        p {
            font-size: 14px;
            text-align: justify;
        }

        .container {
            max-width: 1920px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .col-12,
        .col-md-4 {
            width: 100%;
            padding: 0 10px;
        }

        @media (min-width: 768px) {
            .col-12 {
                width: 100%;
            }

            .col-md-4 {
                width: 33.33%;
            }
        }
    </style>

    <section >
        <h1 class="text-center">All In One Gaming Accessories Store</h1>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Features</h2>
                        <center><b>Our 3 Primary Features - </b></center>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <h4>Product Catalog</h4>
                        <p class="text-justify">A comprehensive product catalog that includes a variety of gaming accessories such as gaming consoles, controllers, headsets, and more.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <h4>Search Feature</h4>
                        <p class="text-justify">A helps customers to find specific products they are looking for quickly and easily.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <h4>Order Tracking</h4>
                        <p class="text-justify"> A feature that allows customers to track their orders in real-time can help improve customer satisfaction and build trust in the brand.</p>
                    </center>
                </div>
            </div>
        </div>
        <div style="border-top:1px dotted black"></div>
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <center>
                        <h2>Our Process</h2>
                        <center><b>We have a simple 3 step process - </b></center>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <center>
                        <h4>Sign Up and Browse</h4>
                        <p class="text-justify">Users can browse the website's categories or use the search function to find the products they're interested in. They can filter their search results by price, platform, or other attributes to narrow down their choices.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <h4>Add to Cart and Checkout</h4>
                        <p class="text-justify">Once the user has decided on a product, they can add it to their shopping cart and continue browsing or proceed to checkout. At checkout, they can review their order details, shipping and billing information, and payment method.</p>
                    </center>
                </div>
                <div class="col-md-4">
                    <center>
                        <h4>Receive and Enjoy</h4>
                        <p class="text-justify">After the user has completed their order, they will receive a confirmation email with their order details and estimated delivery date. The website will process the order and ship the product to the user's address.</p>
                    </center>
                </div>
            </div>
        </div>
    </section>
    <div style="border-top:1px dotted black"></div>
</asp:Content>
