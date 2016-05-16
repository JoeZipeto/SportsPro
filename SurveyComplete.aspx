<%@ Page Title="SportsPro - Survey Complete" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="SurveyComplete.aspx.cs" Inherits="SurveyComplete" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="row">
        <div class="col s12">
            <div class="card">
                <div class="card-image waves-effect waves-block waves-light">
                    <img src="App_Images/pexels-photo-7.jpeg" />
                </div>
                <div class="card-content">
                    <div class="card-title">
                        <span class="title blue-grey-text">
                            <asp:Label ID="lblSC1" CssClass="lblH1" runat="server" Text="Survey Complete "></asp:Label></span>
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
                            <asp:Label ID="lblSC3" runat="server" Text="Thank you for your feedback!"></asp:Label>
                        </span>
                    </div>
                    <div class="row">
                        <div class="col s12">
                            <p>
                                <asp:Label ID="lblSC2" CssClass="lblH2" runat="server" Text=" - Description ..."></asp:Label>
                            </p>
                            <p>
                                <asp:Label ID="lblSC4" runat="server"></asp:Label>
                            </p>
                            <br />
                            <asp:Button ID="btnReturnSurvey" runat="server" class="btn waves-effect waves-light light-green darken-1" Text="Return to Survey" OnClick="btnReturnSurvey_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>

