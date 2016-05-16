<%@ Page Title="SportsPro - Products Maintenance" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ProductsAdmin.aspx.cs" Inherits="ProductsAdmin" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 124px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/ice-hockey-goalie-goal-sport-3901.jpeg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="Label2" class="lblH1" runat="server" Text="Products Maintenance Page"></asp:Label></span>
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
                            <asp:Label ID="Label1" class="lblH2" runat="server" Text="Product List"></asp:Label></span>
                    </div>
                    <br />
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [Products] WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [ReleaseDate] = @original_ReleaseDate AND [Version] = @original_Version" InsertCommand="INSERT INTO [Products] ([ProductCode], [Name], [ReleaseDate], [Version]) VALUES (@ProductCode, @Name, @ReleaseDate, @Version)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT [ProductCode], [Name], [ReleaseDate], [Version] FROM [Products]" UpdateCommand="UPDATE [Products] SET [Name] = @Name, [ReleaseDate] = @ReleaseDate, [Version] = @Version WHERE [ProductCode] = @original_ProductCode AND [Name] = @original_Name AND [ReleaseDate] = @original_ReleaseDate AND [Version] = @original_Version">
                        <DeleteParameters>
                            <asp:Parameter Name="original_ProductCode" Type="String" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
                            <asp:Parameter Name="original_Version" Type="Decimal" />
                        </DeleteParameters>
                        <InsertParameters>
                            <asp:Parameter Name="ProductCode" Type="String" />
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                            <asp:Parameter Name="Version" Type="Decimal" />
                        </InsertParameters>
                        <UpdateParameters>
                            <asp:Parameter Name="Name" Type="String" />
                            <asp:Parameter Name="ReleaseDate" Type="DateTime" />
                            <asp:Parameter Name="Version" Type="Decimal" />
                            <asp:Parameter Name="original_ProductCode" Type="String" />
                            <asp:Parameter Name="original_Name" Type="String" />
                            <asp:Parameter Name="original_ReleaseDate" Type="DateTime" />
                            <asp:Parameter Name="original_Version" Type="Decimal" />
                        </UpdateParameters>
                    </asp:SqlDataSource>

                    <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductCode" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Font-Names="Roboto Condensed">
                        <AlternatingRowStyle BackColor="White" ForeColor="#263238" />
                        <Columns>
                            <asp:TemplateField HeaderText="ProductCode" SortExpression="ProductCode">
                                <EditItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("ProductCode") %>'></asp:Label>
                 
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductCode") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtNameEdit" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                                        ControlToValidate="txtNameEdit"
                                        ErrorMessage="This field is required"
                                        Display="Dynamic"
                                        forecolor="Red">
                                    </asp:RequiredFieldValidator>                                        
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label2" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Version" SortExpression="Version">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtVersionEdit" runat="server" Text='<%# Bind("Version") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                                        ControlToValidate="txtVersionEdit"
                                        Display="Dynamic"
                                        ErrorMessage="This field is required"
                                        forecolor="Red">
                                    </asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator6" runat="server" ControlToValidate="txtVersionEdit" 
                                        Display="Dynamic" ErrorMessage="Version Should be in 2.0 format" 
                                        ForeColor="Red" Operator="DataTypeCheck" Type="Double">
                                    </asp:CompareValidator>
                           
                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label3" runat="server" Text='<%# Bind("Version") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="ReleaseDate" SortExpression="ReleaseDate">
                                <EditItemTemplate>
                                    <asp:TextBox ID="txtReleasedateEdit" runat="server" Text='<%# Bind("ReleaseDate", "{0:yyyy-MM-dd}") %>'></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                                        ControlToValidate="txtReleasedateEdit"
                                        ErrorMessage="This field is required"
                                        forecolor="Red"
                                        Display="Dynamic">
                                    </asp:RequiredFieldValidator>
                                    <asp:CompareValidator ID="CompareValidator4" runat="server" ControlToValidate="txtReleaseDateEdit" 
                                        Display="Dynamic" ErrorMessage="Must Be a Valid Date(YYYY-MM-DD)" 
                                        ForeColor="Red" Operator="DataTypeCheck" Type="Date">
                                    </asp:CompareValidator>

                                </EditItemTemplate>
                                <ItemTemplate>
                                    <asp:Label ID="Label4" runat="server" Text='<%# Bind("ReleaseDate", "{0:yyyy-MM-dd}") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" >
                            <ControlStyle BackColor="#0288D1" CssClass="btn " ForeColor="White" />
                            <ItemStyle Wrap="False" />
                            </asp:CommandField>
                        </Columns>
                        <EditRowStyle BackColor="#E1F5FE" />
                        <FooterStyle BackColor="#1976D2" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#0288D1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#0277BD" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="White" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E1F5FE" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#DEF4FE" />
                        <SortedAscendingHeaderStyle BackColor="White" />
                        <SortedDescendingCellStyle BackColor="White" />
                        <SortedDescendingHeaderStyle BackColor="#0277BD" />
                    </asp:GridView>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-content">
                    <div class="card-title">
                        <asp:Label ID="Label3" class="lblH2 title blue-grey-text" runat="server" Text="Add Product"></asp:Label>
                    </div>
                    <asp:Label ID="Label4" class="blue-grey-text text-darken-1" runat="server" Text="To add a new product, enter the product information and Click Add Product."></asp:Label>
                    <br />
                    <table class="auto-style1">
                        <tr>
                            <td colspan="3">
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="ProductValidation" />
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span class="title blue-grey-text">
                                    <asp:Label ID="lblProductCode" runat="server" Text="Product Code:"></asp:Label>
                                </span>
                            </td>
                            <td>
                                <span class="title blue-grey-text">
                                    <asp:TextBox ID="txtProductCode" runat="server" CausesValidation="True"></asp:TextBox>
                                </span>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtProductCode" Display="Dynamic" ErrorMessage="This Field Is Required" ForeColor="Red" ValidationGroup="ProductValidation"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span class="title blue-grey-text">
                                    <asp:Label ID="lblProductCode0" runat="server" Text="Name:"></asp:Label>
                                </span>
                            </td>
                            <td><span class="title blue-grey-text">
                                <asp:TextBox ID="txtName" runat="server" CausesValidation="True"></asp:TextBox>
                            </span>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="This Field Is Required" ForeColor="Red" ValidationGroup="ProductValidation"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span class="title blue-grey-text">
                                    <asp:Label ID="lblProductCode1" runat="server" Text="Version:"></asp:Label>
                                </span>
                            </td>
                            <td><span class="title blue-grey-text">
                                <asp:TextBox ID="txtVersion" runat="server" CausesValidation="True"></asp:TextBox>
                            </span></td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtVersion" Display="Dynamic" ErrorMessage="This Field Is Required" ForeColor="Red" ValidationGroup="ProductValidation"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtVersion" Display="Dynamic" ErrorMessage="Version Should be in 2.0 format" ForeColor="Red" Operator="DataTypeCheck" Type="Double" ValidationGroup="ProductValidation"></asp:CompareValidator>
                            </td>
                        </tr>
                        <tr>
                            <td class="auto-style2">
                                <span class="title blue-grey-text">
                                    <asp:Label ID="lblProductCode2" runat="server" Text="Release Date:"></asp:Label>
                                </span>
                            </td>
                            <td>
                                <asp:TextBox ID="txtReleaseDate" runat="server" CausesValidation="True"></asp:TextBox>
                            </td>
                            <td>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtReleaseDate" Display="Dynamic" ErrorMessage="This Field Is Required" ForeColor="Red" ValidationGroup="ProductValidation"></asp:RequiredFieldValidator>
                                <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="txtReleaseDate" Display="Dynamic" ErrorMessage="Must Be a Valid Date(YYYY-MM-DD)" ForeColor="Red" Operator="DataTypeCheck" Type="Date" ValidationGroup="ProductValidation"></asp:CompareValidator>
                            </td>
                        </tr>
                    </table>
                    <br />
                     <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                    <br />
                     <asp:Button ID="btnAddProduct"  runat="server" OnClick="btnAdd_Click" Text="Add Product" CssClass="waves-effect waves-light btn light-blue darken-2" ValidationGroup="ProductValidation" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>

