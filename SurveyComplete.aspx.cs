/*********************************************************************************************
* Project: COMP2139 Assignment 1
* Assignment: <assignment 1>
* Authors: Joe Zipeto, Bahman Yaghoubi Vije, Iwona Pawluk
* Student Numbers: 100963441, 100968843, 100967879
* Date: March 2, 2016
* Description: This is the Survey Complete C# aspx file. Once the user submits the survey it
* 				prints out this page with information that survey has been completed
*********************************************************************************************/

using System;
using System.Web.UI;

public partial class SurveyComplete : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //get the session from previous page to contact user only if the user checked the contact box
        if( (bool)Session["needContact"])
            lblSC4 .Text = "A  customer service representative will contact you within 24 hours.";
    }

    protected void btnReturnSurvey_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        { Server.Transfer("Surveys.aspx"); }
    }
}