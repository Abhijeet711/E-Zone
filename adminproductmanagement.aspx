<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminproductmanagement.aspx.cs" Inherits="E_Commerce_Project.WebForm3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">

        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });

        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }

    </script>
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
                                    <h3>Product Details</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <img id="imgview" height="200px" width="200px" src="imgs/products.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3">
                                <label>Product ID</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-5">
                                <label>Product Name</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox2" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-4">
                                <label>Product Price</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-6">
                                <label>Brand</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <label>Manufacturing Date</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox5" runat="server" AutoCompleteType="Disabled"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <label>Product Description</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox6" runat="server" AutoCompleteType="Disabled" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <label>Product Image Link</label>
                                <div class="form-group">
                                    <asp:FileUpload class="form-control" onchange="readURL(this);" ID="FileUpload1" runat="server" />
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-4">
                                <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-lg-4">
                                <asp:Button ID="Button2" class="btn btn-warning btn-block btn-lg" runat="server" Text="Update" OnClick="Button2_Click" />
                            </div>
                            <div class="col-lg-4">
                                <asp:Button ID="Button3" class="btn btn-danger btn-block btn-lg" runat="server" Text="Remove" OnClick="Button3_Click" />
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
                                    <h3>Product Management</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr />
                            </div>
                        </div>

                        <div class="row">
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" SelectCommand="SELECT * FROM [eproducts]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1" >
                                    <Columns>
                                        <asp:BoundField DataField="pid" HeaderText="ID" SortExpression="pid" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-9">

                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("pname") %>' Font-Bold="true" Font-Size="Large"></asp:Label>
                                                                                           <asp:Image style="width:15%; height:15%; float:right" class="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("imgurl") %>' />
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
            </div>
        
        </div>
    </div>

</asp:Content>
