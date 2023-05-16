<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="adminmembermanagement.aspx.cs" Inherits="E_Commerce_Project.WebForm2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

    <script type="text/javascript">
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
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
                            <div class="col-lg-6">
                                <label>Name</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Contact Number</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox2" runat="server" MaxLength="10"></asp:TextBox>
                                </div>
                            </div>
                            
                        </div>

                        <div class="row">

                            <div class="col-lg-6">
                                <label>Email ID</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox3" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-6">
                                <label>Password</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox4" runat="server"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row">
                            <div class="col-lg-5">
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

                            <div class="col-lg-4">
                                <label>City</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox5" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-lg-3">
                                <label>Pincode</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox6" runat="server" MaxLength="6"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-12">
                                <label>Address</label>
                                <div class="form-group">
                                    <asp:TextBox AutoCompleteType="Disabled" CssClass="form-control" ID="TextBox7" runat="server" TextMode="MultiLine"></asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-lg-3">
                                <asp:Button ID="Button4" class="btn btn-success btn-block btn-lg" runat="server" Text="Search" OnClick="Button4_Click"/>
                            </div>
                            <div class="col-lg-3">
                                <asp:Button ID="Button1" class="btn btn-primary btn-block btn-lg" runat="server" Text="Add" OnClick="Button1_Click" />
                            </div>
                            <div class="col-lg-3">
                                <asp:Button ID="Button2" class="btn btn-warning btn-block btn-lg" runat="server" Text="Update" OnClick="Button2_Click" />
                            </div>
                            <div class="col-lg-3">
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
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DB1ConnectionString %>" ProviderName="<%$ ConnectionStrings:DB1ConnectionString.ProviderName %>" SelectCommand="SELECT * FROM [eusers]"></asp:SqlDataSource>
                            <div class="col">
                                <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="name" HeaderText="Name" SortExpression="name" />
                                        <asp:BoundField DataField="contact_no" HeaderText="Contact Number" SortExpression="contact_no" />
                                        <asp:BoundField DataField="email" HeaderText="Email" SortExpression="email" />
                                        <asp:BoundField DataField="password" HeaderText="Password" SortExpression="password" />
                                        <asp:BoundField DataField="address" HeaderText="Address" SortExpression="address" />
                                        <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" />
                                        <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" />
                                        <asp:BoundField DataField="pincode" HeaderText="Pincode" SortExpression="pincode" />
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
