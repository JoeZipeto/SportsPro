<%@ Page Title="SportsPro - Surveys" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Surveys.aspx.cs" Inherits="Surveys" MaintainScrollPositionOnPostback="true" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/road-dawn-mountains-sky2.jpg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="Label2" class="lblH1" runat="server" Text="Survey"></asp:Label></span>
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
                            <asp:Label ID="lbl1" runat="server" Text="Collect feedback from customers"></asp:Label></span>
                    </div>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [IncidentID], [CustomerID], [ProductCode], [TechID], [DateOpened], [DateClosed], [Title], [ResolutionNotes] FROM [Incidents]"></asp:SqlDataSource>
                    <div class="row">
                        <div class="col s8">
                            <label>
                                <asp:Label ID="lbl2" runat="server" Style="font-size: medium;" Text="Enter your customer ID:"></asp:Label></label>
                            <asp:TextBox ID="txtBoxCustomerID" class="green lighten-5" runat="server"></asp:TextBox>
                        </div>
                        <div class="col s2" style="margin-top: 30px;">
                            <asp:Button ID="btnCustomerID" runat="server" class="waves-effect waves-light btn green darken-1" OnClick="btnCustomerID_Click" Text="Get Incidents" ValidationGroup="ValidateCustomerID" />
                        </div>
                    </div>
                    <div class="row">
                        <div class="col s10">
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtBoxCustomerID" Display="Dynamic" ErrorMessage="Enter a customer ID to start survey" ForeColor="Red" ValidationGroup="ValidateCustomerID"></asp:RequiredFieldValidator>
                            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtBoxCustomerID" Display="Dynamic" ErrorMessage="Customer ID must be numeric" ForeColor="Red" Operator="DataTypeCheck" Type="Integer" ValidationGroup="ValidateCustomerID"></asp:CompareValidator>
                            <asp:Label ID="lbl3" runat="server"></asp:Label>
                            <asp:ListBox ID="lBoxIncidents" runat="server" Width="550px" Height="170px" CssClass="browser-default"></asp:ListBox>
                            <br />
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="lBoxIncidents" Display="Dynamic" ErrorMessage="Select an incident to start survey" ForeColor="Red" ValidationGroup="ValidateIncidentSelected"></asp:RequiredFieldValidator>
                            <br />
                            <asp:Label ID="lbl4" runat="server" Text="Please rate this incident by the following categories:"></asp:Label>
                            <br />
                            <br />
                            <asp:Label ID="lbl5" runat="server" Text="Response time:"></asp:Label>
                            <asp:RadioButtonList ID="rtbnListTime" runat="server" Height="55px" RepeatDirection="Horizontal" Width="800px" DataValueField="True">
                                <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                                <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Label ID="lbl6" runat="server" Text="Technical efficiency:"></asp:Label>
                            <asp:RadioButtonList ID="rtbnListEfficiency" runat="server" Height="55px" RepeatDirection="Horizontal" Width="800px">
                                <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                                <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:Label ID="lbl7" runat="server" Text="Problem resolution:"></asp:Label>
                            <asp:RadioButtonList ID="rbtnListResolution" runat="server" Height="55px" RepeatDirection="Horizontal" Width="800px">
                                <asp:ListItem Value="1">Not satisfied</asp:ListItem>
                                <asp:ListItem Value="2">Somewhat satisfied</asp:ListItem>
                                <asp:ListItem Value="3">Satisfied</asp:ListItem>
                                <asp:ListItem Value="4">Completely satisfied</asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <asp:Label ID="lbl8" runat="server" Text="Additional comments:"></asp:Label>
                            <br />
                            &nbsp;<asp:TextBox ID="txtAreaComment" TextMode="multiline" Columns="50" Rows="5" runat="server" Height="142px" />
                            <br />
                            <asp:CheckBox ID="cBoxContact" runat="server" Text="Please contact me to discuss this incident" />
                            <br />
                            <asp:RadioButton ID="rbtnEmail" runat="server" GroupName="contactBy" Text="contact by email" />
                            <asp:RadioButton ID="rbtnPhone" runat="server" GroupName="contactBy" Text="contact by phone" />
                            <br />
                            <asp:Button ID="btnSubmit" runat="server" class="waves-effect waves-light btn green darken-1" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="ValidateIncidentSelected" CssClass="class=&quot;waves-effect waves-light btn green darken-1&quot;" />
                            <br />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
