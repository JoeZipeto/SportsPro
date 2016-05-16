/*********************************************************************************************
* Project: COMP2139 Assignment 1
* Assignment: <assignment 1>
* Authors: Joe Zipeto, Bahman Yaghoubi Vije, Iwona Pawluk
* Student Numbers: 100963441, 100968843, 100967879
* Date: March 2, 2016
* Description: This is the contactList C# aspx file. this is where user can see the selected 
* 		customers in a list box, and is able to add or remove from the list box or empty it.
*********************************************************************************************/

using System;
using System.Web.UI;

public partial class Contactlist : System.Web.UI.Page
{
    CustomerList clist;
    protected void Page_Load(object sender, EventArgs e)
    {
        //retrieve customer object from session on every post back
        clist = CustomerList.GetCustomerList();

        //on initial page load, add previously selected customers to list control
        if (!IsPostBack)
            this.DisplayCustomer();
    }

    private void DisplayCustomer()
    {
        //remove all current customers from list control
        lbContactList.Items.Clear();
        //loop clist and add each item's Display value to the control
        for (int i = 0; i < clist.Count; i++)
        {
            lbContactList.Items.Add(clist[i].Display());
        }
    }

    protected void btnSelect_Click(object sender, EventArgs e)
    {
        if (Page.IsValid)
        {
            Server.Transfer("Customers.aspx");
        }
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        //if list contains items and user has selected an item...
        if (clist.Count > 0)
        {
            if (lbContactList.SelectedIndex > -1)
            {

                //remove selected item from list and re-add list items 
                clist.RemoveAt(lbContactList.SelectedIndex);
                this.DisplayCustomer();
            }
        }
    }

    protected void btnEmpty_Click(object sender, EventArgs e)
    {
        //if list has items, clear both list and list control
        if (clist.Count > 0)
        {
            clist.Clear();
            lbContactList.Items.Clear();
        }
    }
}