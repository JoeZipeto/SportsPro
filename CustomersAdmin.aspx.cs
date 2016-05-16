/*********************************************************************************************
* Project: COMP2139 Assignment 2
* Assignment: <assignment 2>
* Authors: Joe Zipeto, Bahman Yaghoubi Vije, Iwona Pawluk
* Student Numbers: 100963441, 100968843, 100967879
* Date: March 25, 2016
* Description: 
*********************************************************************************************/
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class CustomersAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }
    protected void DetailsView1_ItemUpdated(object sender, DetailsViewUpdatedEventArgs e)
    {
        //PostCondition:: Deals With Concurrancy Issues. This won't update if someone else is already updating
        //                Also this will keep the edit option open.

        if (e.Exception != null)
        {
            lblErrorCustomer.Text = "A database error has occured. " + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblErrorCustomer.Text = "Another User may have updated that product. Please Try again ";
        }
        else
        {
            GridView2.DataBind();
        }
    }

    protected void DetailsView1_ItemInserted(object sender, DetailsViewInsertedEventArgs e)
    {
        //PostCondition:: Deals With Concurrancy Issues. This won't update if someone else is already updating
        //                Also this will keep the edit option open.

        if (e.Exception != null)
        {
            lblErrorCustomer.Text = "A database error has occured. " + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblErrorCustomer.Text = "Another User may have updated that product. Please Try again ";
        }
        else
        {
            GridView2.DataBind();
        }
    }

    protected void DetailsView1_ItemDeleted(
        object sender, DetailsViewDeletedEventArgs e)
    {
        //PostCondition:: Deals With Concurrancy Issues. This won't update if someone else is already updating
        //                Also this will keep the edit option open.
        if (e.Exception != null)
        {
            lblErrorCustomer.Text = "A database error has occurred. " +
                "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
            lblErrorCustomer.Text = "Another user may have updated that product. " +
                "Please try again.";
        else
        {
            GridView2.DataBind();
            DetailsView1.DataBind();
        }
    }

    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        DetailsView1.DataBind();
    }
}