<%@ Page Title="SportsPro - Customers Maintenance" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contactlist.aspx.cs" Inherits="Contactlist" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/pexels-photo-5.jpeg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="lblContactList" CssClass="lblH1" runat="server" Text="Contact List "></asp:Label></span>
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
                            <asp:Label ID="lblContactList2" CssClass="lblH2" runat="server" Text="Manage your contact list"></asp:Label>
                        </span>
                    </div>
                    <div class="row">
                        <table>
                            <tr>
                                <td rowspan="3" class=" customerList">
                                    <asp:ListBox ID="lbContactList" class="browser-default col s4" runat="server" Height="250px" Width="500px"></asp:ListBox>
                                </td>
                                <td>
                                    <asp:Button ID="btnSelect" runat="server" OnClick="btnSelect_Click" class="waves-effect waves-light btn orange darken-3 left col s3 buttonSizeFix" Text="Add Contact" /></td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnRemove" runat="server" OnClick="btnRemove_Click" class="waves-effect waves-light btn orange darken-3 left col s3 buttonSizeFix" Text="Remove Contact" />
                                </td>
                            </tr>
                            <tr>
                                <td>
                                    <asp:Button ID="btnEmpty" runat="server" OnClick="btnEmpty_Click" class="waves-effect waves-light btn orange darken-3 left col s3 buttonSizeFix" Text="Empty List" />
                                </td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

