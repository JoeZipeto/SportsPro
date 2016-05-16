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

public partial class ProductsAdmin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        //PostCondition:: This is Add a product to the Database Providing the data is the same type as dataBase
        //                 And all the validations are correct
         
        SqlDataSource1.InsertParameters["ProductCode"].DefaultValue = txtProductCode.Text;
        SqlDataSource1.InsertParameters["Name"].DefaultValue = txtName.Text;
        SqlDataSource1.InsertParameters["Version"].DefaultValue = txtVersion.Text;
        SqlDataSource1.InsertParameters["ReleaseDate"].DefaultValue = txtReleaseDate.Text;
     
        try
        {
            Page.Validate();
            if (Page.IsValid) // Checks to make sure the valdations are correct
            {
                txtName.Text = "";
                txtProductCode.Text = "";
                txtReleaseDate.Text = "";
                txtVersion.Text = "";
                SqlDataSource1.Insert(); // Insert in database
                lblError.Text = "";
            }
        }
        catch (Exception ex)
        {
            lblError.Text = "A database error has occured " + ex.Message; // If a exception is thrown display this message
            txtName.Text = "";
            txtProductCode.Text = "";
            txtReleaseDate.Text = "";
            txtVersion.Text = "";
        }
    }

    protected void GridView1_RowDeleting(object sender, DetailsViewDeletedEventArgs e)
    {
        //PostCondition:: Deals with Concurrancy Issues. This won't delete if someone else is using the same data
        if (e.Exception != null)
        {
            lblError.Text = "A database error has occured. " + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
        }
        else if (e.AffectedRows == 0)
        {
            lblError.Text = "Another User may have updated that product. Please Try again ";
        }
        else
        {
            GridView1.DataBind();
        }

    }

    protected void GridView1_RowUpdating(object sender, DetailsViewUpdatedEventArgs e)
    {
        //PostCondition:: Deals With Concurrancy Issues. This won't update if someone else is already updating
        //                Also this will keep the edit option open.

        if(e.Exception != null)
        {
            lblError.Text = "A database error has occured. " + "Message: " + e.Exception.Message;
            e.ExceptionHandled = true;
            e.KeepInEditMode = true;
        }
        else if(e.AffectedRows == 0)
        {
            lblError.Text = "Another User may have updated that product. Please Try again ";
        }
        else
        {
            GridView1.DataBind();
        }
    }
}