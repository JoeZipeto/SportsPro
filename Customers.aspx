<%@ Page Title="SportsPro - Customers" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/pexels-photo-4.jpeg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="lblCustomers" class="lblH1" runat="server" Text="Customers"></asp:Label></span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="Label2" class="lblH2" runat="server" Text="Search and view your customer contact information"></asp:Label></span>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [CustomerID], [Name], [Address], [City], [State], [ZipCode], [Phone], [Email] FROM [Customers]"></asp:SqlDataSource>
                    <div class="row">
                        <div class="col s12">
                            <label>
                                <asp:Label ID="lblDDList" runat="server" Style="font-size: medium;" Text="Select a customer: " Width="150px"></asp:Label></label>
                        </div>
                        <div class="col s6">
                            <asp:DropDownList ID="DDLCustomers" class="DDList browser-default" runat="server" DataSourceID="SqlDataSource1" DataTextField="Name" DataValueField="CustomerID">
                            </asp:DropDownList>
                        </div>
                        <div class="col s4" style="margin-top: 4px;">
                            <asp:Button ID="btnDisplayContact" class="waves-effect waves-light btn blue-grey darken-3" runat="server" Text="Display Contact" OnClick="btnDisplayContact_Click" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <label>
                                <asp:Label ID="lblCName" runat="server" Text="Name: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerName" runat="server"></asp:Label></strong><br />
                            <br />
                            <label>
                                <asp:Label ID="lblCAdress" runat="server" Text="Address: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerAddress" runat="server"></asp:Label></strong><br />
                            <br />
                            <label>
                                <asp:Label ID="lblCCity" runat="server" Text="City: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerCity" runat="server"></asp:Label></strong><br />
                            <br />
                            <label>
                                <asp:Label ID="lblCState" runat="server" Text="State: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerState" runat="server"></asp:Label></strong><br />
                            <br />
                            <label>
                                <asp:Label ID="lblCZipCode" runat="server" Text="Zip Code: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerZipCode" runat="server"></asp:Label></strong><br />
                            <br />
                            <label>
                                <asp:Label ID="lblCPhone" runat="server" Text="Phone: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerPhone" runat="server"></asp:Label></strong><br />
                            <br />
                            <label>
                                <asp:Label ID="lblCEmail" runat="server" Text="Email: " Width="165px"></asp:Label></label>
                            <strong>
                                <asp:Label ID="lblCustomerEmail" runat="server"></asp:Label></strong><br />
                            <br />
                            <asp:Button ID="btnAddToContact" class="waves-effect waves-light btn blue-grey darken-3 center" runat="server" Text="Add to Contact List" OnClick="btnAddToContact_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
