<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="products.aspx.cs" Inherits="E_Commerce_Project.products" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
            $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
            });
    </script>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="main_card">
        <div class="card-body">
            <div class="row">
                <div class="col">
                    <center>
                        <h4>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [eproducts]"></asp:SqlDataSource>
                            Products List</h4>
                    </center>
                </div>
            </div>

            <div class="row">
                <div class="col">
                    <asp:GridView class="table table-striped table-bordered" ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                        <Columns>
                            <asp:BoundField DataField="pid" HeaderText="Product ID" SortExpression="pid" />
                            <asp:TemplateField>
                                <ItemTemplate>
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-lg-9">

                                                <div class="row">
                                                    <div class="col-12">
                                                        <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' Font-Bold="true" Font-Size="X-Large"></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        Brand: 
                                                        <asp:Label ID="Label2" Font-Bold="true" runat="server" Text='<%# Eval("brand") %>'></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        Price: <b>₹</b>
                                                        <asp:Label ID="Label3" Font-Bold="true" runat="server" Text='<%# Eval("price") %>'></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        Manufacturing Date: 
                                                        <asp:Label ID="Label4" Font-Bold="true" runat="server" Text='<%# Eval("mfgdate") %>'></asp:Label>
                                                    </div>
                                                </div>

                                                <div class="row">
                                                    <div class="col-12">
                                                        <u>Description:</u>
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("pdesc") %>'></asp:Label>
                                                    </div>
                                                </div>
                                                <br />
                                                <div class="row">
                                                    &nbsp;&nbsp;&nbsp;Quantity:
                                                    <div class="col-md-6">
                                                        <asp:TextBox ID="TextBox1" TextMode="Number" runat="server"></asp:TextBox>
                                                    </div>
                                                    <br /><br />
                                                    <div class="col-md-6">
                                                            <asp:HiddenField ID="prod_id" runat="server" Value='<%# Eval("pid") %>' />
                                                            <asp:LinkButton ID="LinkButton1" runat="server" style="text-align: right;text-decoration: none;" CssClass="button" OnClick="LinkButton1_Click">Add to Cart</asp:LinkButton>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="col-lg-3">
                                                <asp:Image class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("imgurl") %>' />
                                            </div>
                                        </div>
                                    </div>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
