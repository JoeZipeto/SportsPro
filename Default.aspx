<%@ Page Title="SportsPro - Home" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/pexels-photo2.jpg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="Label2" class="lblH1" runat="server" Text="Welcome to SportsPro Support Portal "></asp:Label></span>
                    </div>
                    <div class="row">
                        <div class="col s4">
                            <a href="./Customers.aspx">
                                <div class="card teal darken-1">
                                    <div class="card-content  white-text center">
                                        <i class="home-icon large material-icons z-depth-2">supervisor_account</i><br />
                                        <span class="card-title">Customers</span>
                                    </div>
                                    <div class="card-action  white" style="min-height: 30vh;">
                                        <p style="min-height: 12vh;" class="blue-grey-text text-darken-1">
                                            <asp:Label ID="Label6" runat="server" Text="Go to "></asp:Label>
                                            <asp:Label ID="Label13" runat="server" ForeColor="Blue" Text="Customers "></asp:Label>
                                            <asp:Label ID="Label14" runat="server" Text="section to search for your customer information"></asp:Label>
                                        </p>
                                    </div>

                                </div>
                            </a>
                        </div>

                        <div class="col s4">
                            <a href="./Surveys.aspx">
                                <div class="card teal darken-1">
                                    <div class="card-content  white-text center">
                                        <i class="home-icon large material-icons  z-depth-2">assignment</i><br />
                                        <span class="card-title">Survey</span>
                                    </div>
                                    <div class="card-action  white" style="min-height: 30vh;">
                                        <p style="min-height: 12vh;" class="blue-grey-text text-darken-1">
                                            <asp:Label ID="Label1" runat="server" Text="What do you think about our service?"></asp:Label>
                                            <asp:Label ID="Label3" runat="server" ForeColor="Blue" Text="Submit a survey "></asp:Label>
                                            <asp:Label ID="Label4" runat="server" Text="to provide your feedbackfor any support we have provided to you recently"></asp:Label>
                                        </p>
                                    </div>

                                </div>
                            </a>
                        </div>
                        <div class="col s4">
                            <div class="card teal darken-1">
                                <div class="card-content  white-text center">
                                    <i class="home-icon large material-icons  z-depth-2">settings_applications</i><br />
                                    <span class="card-title">Administration</span>
                                </div>
                                <div class="card-action  white" style="min-height: 30vh;">
                                    <p style="min-height: 12vh;" class="blue-grey-text text-darken-1">
                                        Modify Customers and Products.&nbsp; <br /><br />
                                        <a href="CustomersAdmin.aspx" class="teal-text">
                                            <asp:Label ID="Label16" runat="server" ForeColor="blue" Text=" supervisor_account" cssclass="btn-floating material-icons white-text center"></asp:Label> Customers
                                        </a><br /><br />
                                       
                                        <a href="ProductsAdmin.aspx" class="teal-text">
                                            <asp:Label ID="Label5" runat="server" ForeColor="blue" Text="library_books" cssclass="btn-floating material-icons white-text center"></asp:Label> Products
                                        </a>
                                    </p>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
