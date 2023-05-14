<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="usersignup.aspx.cs" Inherits="E_Commerce_Project.usersignup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Registration</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <%-- Basic Details --%>
                        <div class="row">
                            <div class="col">

                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Name" ID="TextBox3" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </div>

                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Contact Number" ID="TextBox4" runat="server" TextMode="Phone" MaxLength="10" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>

                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Email ID" ID="TextBox1" AutoCompleteType="Disabled" runat="server"></asp:TextBox>
                                </div>

                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Password" ID="TextBox2" AutoCompleteType="Disabled" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <label>Confirm Password</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Password" ID="TextBox5" AutoCompleteType="Disabled" runat="server" TextMode="Password"></asp:TextBox>
                                </div>

                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Address" ID="TextBox6" AutoCompleteType="Disabled" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>

                            </div>
                        </div>

                        <%-- Further Details --%>
                        <div class="row">
                            
                            <%-- State --%>
                            <div class="col-md-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:DropDownList class="form-control" ID="DropDownList1" runat="server">
                                        <asp:ListItem Text="--select--" Value="select"></asp:ListItem>
                                        <asp:ListItem Text="Andhra Pradesh" Value="Andhra Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Arunachal Pradesh" Value="Arunachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Assam" Value="Assam"></asp:ListItem>
                                        <asp:ListItem Text="Bihar" Value="Bihar"></asp:ListItem>
                                        <asp:ListItem Text="Chhattisgarh" Value="Chhattisgarh"></asp:ListItem>
                                        <asp:ListItem Text="Goa" Value="Goa"></asp:ListItem>
                                        <asp:ListItem Text="Gujarat" Value="Gujarat"></asp:ListItem>
                                        <asp:ListItem Text="Haryana" Value="Haryana"></asp:ListItem>
                                        <asp:ListItem Text="Himachal Pradesh" Value="Himachal Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Jharkhand" Value="Jharkhand"></asp:ListItem>
                                        <asp:ListItem Text="Karnataka" Value="Karnataka"></asp:ListItem>
                                        <asp:ListItem Text="Kerala" Value="Kerala"></asp:ListItem>
                                        <asp:ListItem Text="Madhya Pradesh" Value="Madhya Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Maharashtra" Value="Maharashtra"></asp:ListItem>
                                        <asp:ListItem Text="Manipur" Value="Manipur"></asp:ListItem>
                                        <asp:ListItem Text="Meghalaya" Value="Meghalaya"></asp:ListItem>
                                        <asp:ListItem Text="Mizoram" Value="Mizoram"></asp:ListItem>
                                        <asp:ListItem Text="Nagaland" Value="Nagaland"></asp:ListItem>
                                        <asp:ListItem Text="Odisha" Value="Odisha"></asp:ListItem>
                                        <asp:ListItem Text="Punjab" Value="Punjab"></asp:ListItem>
                                        <asp:ListItem Text="Rajasthan" Value="Rajasthan"></asp:ListItem>
                                        <asp:ListItem Text="Sikkim" Value="Sikkim"></asp:ListItem>
                                        <asp:ListItem Text="Tamil Nadu" Value="Tamil Nadu"></asp:ListItem>
                                        <asp:ListItem Text="Telangana" Value="Telangana"></asp:ListItem>
                                        <asp:ListItem Text="Tripura" Value="Tripura"></asp:ListItem>
                                        <asp:ListItem Text="Uttar Pradesh" Value="Uttar Pradesh"></asp:ListItem>
                                        <asp:ListItem Text="Uttarakhand" Value="Uttarakhand"></asp:ListItem>
                                        <asp:ListItem Text="West Bengal" Value="West Bengal"></asp:ListItem>
                                    </asp:DropDownList> 
                                </div>
                            </div>

                            <%-- City --%>
                            <div class="col-md-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="City" ID="TextBox7" AutoCompleteType="Disabled" runat="server" TextMode="SingleLine"></asp:TextBox>
                                </div>
                            </div>

                            <%-- Pincode --%>
                            <div class="col-md-4">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox class="form-control" placeholder="Pincode" ID="TextBox8" AutoCompleteType="Disabled" runat="server" TextMode="Phone" MaxLength="6"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <%-- SignUp Button --%>
                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <asp:Button ID="Button1" class="btn btn-success btn-block btn-lg" OnClick="Button1_Click" runat="server" Text="Sign Up" />
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
