<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="cart.aspx.cs" Inherits="E_Commerce_Project.cart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <h3 class="text-center">Invoice</h3>
                    <br />
                </div>
            </div>
            <div class="row">
                <div class="col">
                    <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False">
                        <Columns>
                            <asp:TemplateField HeaderText="Product Image">
                                <ItemTemplate>
                                    <div class="row">
                                        <div class="col-3">
                                            <asp:Image style="width:35%; height:35%;" ID="Image1" runat="server" CssClass="product-grid img-fluid" ImageUrl='<%# Eval("ImageURL") %>' />
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="ProductId" HeaderText="Product ID" />
                            <asp:BoundField DataField="ProductName" HeaderText="Product Name" />
                            <asp:BoundField DataField="Price" HeaderText="Price" />
                            <asp:BoundField DataField="Quantity" HeaderText="Quantity" />
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>

    <div class="card-body">
        <div class="row">
            <div class="col">
                <center>
                    <h4>Total Quantity: 
                        <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                    </h4>
                </center>
            </div>
        </div>

        <div class="row">
            <div class="col">
                <center>
                    <h4>Total Price: ₹
                        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    </h4>
                </center>
            </div>
        </div>
    </div>
</asp:Content>
