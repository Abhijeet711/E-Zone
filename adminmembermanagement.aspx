<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_Commerce_Project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container-fluid">
        <div class="row">
            <%-- LEFT SIDE --%>
            <div class="col-lg-5">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Details</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="200px" src="imgs/generaluser.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>State</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Add" />
                            </div>
                            <div class="col-lg-4">
                                <asp:Button ID="Button2" class="btn btn-warning btn-block btn-lg" runat="server" Text="Update" />
                            </div>
                            <div class="col-lg-4">
                                <asp:Button ID="Button3" class="btn btn-danger btn-block btn-lg" runat="server" Text="Remove" />
                            </div>
                        </div>

                    </div>
                </div>
            </div>

            <%-- RIGHT SIDE --%>
            <div class="col-lg-7">
                <div class="card">
                    <div class="card-body">

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Management</h3>
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
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>
    </div>

</asp:Content>
