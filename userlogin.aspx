<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userlogin.aspx.cs" Inherits="E_Commerce_Project.userlogin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
    body {
        font-family: Arial, sans-serif;
        background-color: #f2f2f2;
    }
    
    .container {
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
    }
    
    .card {
        width: 400px;
        padding: 20px;
        border-radius: 8px;
        background-color: #fff;
        box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    
    .card img {
        width: 150px;
        margin-bottom: 20px;
    }
    
    .card h3 {
        font-size: 24px;
        margin-bottom: 20px;
    }
    
    .card hr {
        border-top: 1px solid #ccc;
        margin-top: 20px;
        margin-bottom: 20px;
    }
    
    .form-group {
        margin-bottom: 20px;
    }
    
    .form-group label {
        font-weight: bold;
        margin-bottom: 5px;
    }
    
    .form-control {
        width: 100%;
        height: 40px;
        padding: 8px;
        font-size: 16px;
        border: 1px solid #ccc;
        border-radius: 4px;
    }
    
    .btn-block {
        display: block;
        width: 100%;
        height: 40px;
        padding: 8px;
        font-size: 16px;
        border: none;
        border-radius: 4px;
        color: #fff;
        background-color: #28a745;
        cursor: pointer;
    }
    
    .btn-block:hover {
        background-color: #218838;
    }
    
    .back-to-home {
        display: block;
        margin-top: 20px;
        text-align: center;
        color: #333;
        text-decoration: none;
    }
    
    .back-to-home:hover {
        text-decoration: underline;
    }
</style>

    <div class="container">

        <div class="row">

            <div class="col-md-6 mx-auto">

                <div class="card">

                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png"/>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" class="form-control" placeholder="Email ID" ID="TextBox1" runat="server"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" class="form-control" placeholder="Password" ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group">
                                   <a href="usersignup.aspx"> <input id="Button2" class="btn btn-info btn-block btn-lg" type="button" value="Sign Up" /> </a>
                                </div>

                            </div>
                        </div>

                    </div>
                </div>

                <a href="homepage.aspx">Back to Home</a>

            </div>
        </div>
    </div>

</asp:Content>
