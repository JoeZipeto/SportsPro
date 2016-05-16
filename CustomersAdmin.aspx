<%@ Page Title="SportsPro - Customers Maintenance" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="CustomersAdmin.aspx.cs" Inherits="CustomersAdmin" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            margin-right: 0px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/pexels-photo-1279.jpeg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="Label2" class="lblH1" runat="server" Text="Customers Maintenance Page"></asp:Label>
                        </span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="card">
        <div class="card-content">
            <div class="col s12">
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>"
                    SelectCommand="SELECT [CustomerID], [Name], [City], [State] FROM [Customers]"></asp:SqlDataSource>

                <div class="row">
                    <div class="col s7 same-hight" style= "width:470px;">
                        <%--<div class="card">--%>
                        <div class="card-content">
                            <div class="card-title">
                                <span class="title blue-grey-text">
                                    <asp:Label ID="Label1" class="lblH2" runat="server" Text="Customers List"></asp:Label>
                                </span>
                            </div>
                            <asp:GridView ID="GridView2" runat="server" PageSize="7" AllowPaging="True" DataKeyNames="CustomerID" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4"
                                DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" SelectedIndex="0" Font-Names="Roboto Condensed" CssClass="auto-style1">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775"/>
                                <Columns>
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                                    <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                                    <asp:CommandField ShowSelectButton="True" ButtonType="Button">
                                        <ControlStyle BackColor="#455A64" CssClass="btn" ForeColor="White" />
                                        <FooterStyle />
                                    </asp:CommandField>
                                </Columns>
                                <EditRowStyle BackColor="#ABBCC5" />
                                <FooterStyle BackColor="White" Font-Bold="True" ForeColor="White" />
                                <HeaderStyle BackColor="#455A64" Font-Bold="False" ForeColor="white" BorderColor="" Font-Size="Large" HorizontalAlign="Center" />
                                <PagerStyle BackColor="White" ForeColor="#455A64" HorizontalAlign="Left" Font-Names="Roboto Condensed" VerticalAlign="Middle" />
                                <RowStyle BackColor="White" ForeColor="#333333" />
                                <SelectedRowStyle BackColor="#E0F2F1" Font-Bold="True" ForeColor="#333333" />
                                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                                <SortedAscendingHeaderStyle BackColor="#57717D" />
                                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>
                            <br />
                        </div>
                        <%--</div>--%>
                    </div>
                    <div class="col s5 " style= "width:370px;">
                         <div class="card teal white-text" style="margin-top:70px; width:370px;"> 
                        
                        <div class="card-content" style="width:390px;">
                            <div class="card-title">
                                <asp:Label ID="Label3" runat="server" Text="Customer Details" CssClass="lblH2 title white-text"></asp:Label>
                                <hr />
                            </div>
                            <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource2" AutoGenerateRows="False" Font-Names="Roboto Condensed" DataMember="DefaultView"
                                OnItemDeleted="DetailsView1_ItemDeleted"
                                OnItemInserted="DetailsView1_ItemInserted"
                                OnItemUpdated="DetailsView1_ItemUpdated" DataKeyNames="CustomerID">
                                <AlternatingRowStyle CssClass="text-blue-grey blue-gray lighten-1" />
                                <CommandRowStyle Font-Names="Roboto Condensed" HorizontalAlign="Center" />
                                <EditRowStyle CssClass="blue-gray darken-1" />
                                <Fields>
                                    <asp:TemplateField HeaderText="Name" SortExpression="Name">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtNameEdit" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator1" runat="server"
                                                ControlToValidate="txtNameEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtNameInsert" runat="server" Text='<%# Bind("Name") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator2" runat="server"
                                                ControlToValidate="txtNameInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblName" runat="server" Text='<%# Bind("Name") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Address" SortExpression="Address">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtAddressEdit" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator3" runat="server"
                                                ControlToValidate="txtAddressEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtAddressInsert" runat="server" Text='<%# Bind("Address") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator4" runat="server"
                                                ControlToValidate="txtAddressInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblAddress" runat="server" Text='<%# Bind("Address") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="City" SortExpression="City">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtCityEdit" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator5" runat="server"
                                                ControlToValidate="txtCityEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtCityInsert" runat="server" Text='<%# Bind("City") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator6" runat="server"
                                                ControlToValidate="txtCityInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCity" runat="server" Text='<%# Bind("City") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="State" SortExpression="State">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtStateEdit" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator7" runat="server"
                                                ControlToValidate="txtStateEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtStateInsert" runat="server" Text='<%# Bind("State") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator8" runat="server"
                                                ControlToValidate="txtStateInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblState" runat="server" Text='<%# Bind("State") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="ZipCode" SortExpression="ZipCode">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtZipCodeEdit" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator9" runat="server"
                                                ControlToValidate="txtZipCodeEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtZipCodeInsert" runat="server" Text='<%# Bind("ZipCode") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator10" runat="server"
                                                ControlToValidate="txtZipCodeInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblZipCode" runat="server" Text='<%# Bind("ZipCode") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Phone" SortExpression="Phone">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtPhoneEdit" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator11" runat="server"
                                                ControlToValidate="txtPhoneEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtPhoneInsert" runat="server" Text='<%# Bind("Phone") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator12" runat="server"
                                                ControlToValidate="txtPhoneInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblPhone" runat="server" Text='<%# Bind("Phone") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Email" SortExpression="Email">
                                        <EditItemTemplate>
                                            <asp:TextBox ID="txtEmailEdit" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator14" runat="server"
                                                ControlToValidate="txtEmailEdit"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </EditItemTemplate>
                                        <InsertItemTemplate>
                                            <asp:TextBox ID="txtEmailInsert" runat="server" Text='<%# Bind("Email") %>'></asp:TextBox>
                                            <asp:RequiredFieldValidator
                                                ID="RequiredFieldValidator15" runat="server"
                                                ControlToValidate="txtEmailInsert"
                                                ErrorMessage="*"
                                                ForeColor="Red">
                                            </asp:RequiredFieldValidator>
                                        </InsertItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblEmail" runat="server" Text='<%# Bind("Email") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="CustomerID" InsertVisible="False" SortExpression="CustomerID" Visible="False">
                                        <EditItemTemplate>
                                            <asp:Label ID="lblCustomerIDEdit" runat="server" Text='<%# Eval("CustomerID") %>'></asp:Label>
                                        </EditItemTemplate>
                                        <ItemTemplate>
                                            <asp:Label ID="lblCustomerID" runat="server" Text='<%# Bind("CustomerID") %>'></asp:Label>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" ButtonType="Button">
                                        <ControlStyle BackColor="#455A64" CssClass="btn" ForeColor="White" />
                                    </asp:CommandField>
                                </Fields>
                                <RowStyle CssClass=" " />
                            </asp:DetailsView>
                        </div>
                        </div>
                    </div>
                </div>

                <asp:Label ID="lblErrorCustomer" runat="server"></asp:Label>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ConflictDetection="CompareAllValues"
                    SelectCommand="SELECT Name, Address, City, State, ZipCode, Phone, Email, CustomerID FROM Customers WHERE (CustomerID = @CustomerID)"
                    OldValuesParameterFormatString="original_{0}"
                    InsertCommand="INSERT INTO Customers(Name, Address, City, State, ZipCode, Phone, Email) VALUES (@Name, @Address, @City, @State, @ZipCode, @Phone, @Email)"
                    DeleteCommand="DELETE FROM [Customers] WHERE [CustomerID] = @original_CustomerID"
                    UpdateCommand="UPDATE [Customers] SET [Name] = @Name,
                        [Address] = @Address,
                        [City] = @City,
                        [State] = @State,
                        [ZipCode] = @ZipCode,
                        [Phone] = @Phone,
                        [Email] = @Email 
                WHERE [CustomerID] = @original_CustomerID">
                    <DeleteParameters>
                        <asp:Parameter Name="original_CustomerID" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Address" />
                        <asp:Parameter Name="City" />
                        <asp:Parameter Name="State" />
                        <asp:Parameter Name="ZipCode" />
                        <asp:Parameter Name="Phone" />
                        <asp:Parameter Name="Email" />
                    </InsertParameters>
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView2" Name="CustomerID" PropertyName="SelectedValue" />
                    </SelectParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" />
                        <asp:Parameter Name="Address" />
                        <asp:Parameter Name="City" />
                        <asp:Parameter Name="State" />
                        <asp:Parameter Name="ZipCode" />
                        <asp:Parameter Name="Phone" />
                        <asp:Parameter Name="Email" />
                        <asp:Parameter Name="original_CustomerID" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
        </div>
    </div>
</asp:Content>

