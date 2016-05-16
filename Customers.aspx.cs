/*********************************************************************************************
* Project: COMP2139 Assignment 1
* Assignment: <assignment 1>
* Authors: Joe Zipeto, Bahman Yaghoubi Vije, Iwona Pawluk
* Student Numbers: 100963441, 100968843, 100967879
* Date: March 2, 2016
* Description: This is the customer C# aspx file. this is where we code the database to the
* 				the program based on the drop down list selection
*********************************************************************************************/

using System;
using System.Data;
using System.Web.UI;

public partial class Customers : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //PostCondition :: Places the values in the Labels for the customer that is selected

        //create an object of Dataview, Filter it by selected customer ID 
        if (!IsPostBack) DDLCustomers.DataBind();
        DataView customerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customerTable.RowFilter = "CustomerID = '" + DDLCustomers.SelectedValue + "'";
        DataRowView row = (DataRowView)customerTable[0];
        //populating the labels with the information of the first customer in the DropDownList
        lblCustomerName.Text = getCustomer().Name;
        lblCustomerAddress.Text = getCustomer().Address;
        lblCustomerCity.Text = getCustomer().City;
        lblCustomerState.Text = getCustomer().State;
        lblCustomerZipCode.Text = getCustomer().ZipCode;
        lblCustomerPhone.Text = getCustomer().Phone;
        lblCustomerEmail.Text = getCustomer().Email;
    }

    protected void btnDisplayContact_Click(object sender, EventArgs e)
    {
        //PostCondition:: Displays the customer in the defined  labels
        DataView customerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customerTable.RowFilter = "CustomerID = '" + DDLCustomers.SelectedValue + "'";
        DataRowView row = (DataRowView)customerTable[0];
        lblCustomerName.Text = getCustomer().Name;
        lblCustomerAddress.Text = getCustomer().Address;
        lblCustomerCity.Text = getCustomer().City;
        lblCustomerState.Text = getCustomer().State;
        lblCustomerZipCode.Text = getCustomer().ZipCode;
        lblCustomerPhone.Text = getCustomer().Phone;
        lblCustomerEmail.Text = getCustomer().Email;
    }

    protected void btnAddToContact_Click(object sender, EventArgs e)
    {
        //PostCondition:: Checks to see if the customer is in the list and if its not then adds the customer to the list
        bool isNew = true;
        if (Page.IsValid)
        {
            //get customer from session and selected item from ddl
            CustomerList clist = CustomerList.GetCustomerList();
            if (this.getCustomer() != null)
            {   
                //Loop through and checks if customer is already in contact list     
                for (int i = 0; i < clist.Count; i++)
                {
                    if (clist[i].CustomerID == this.getCustomer().CustomerID)
                    {
                        isNew = false;
                    }
                }
                //if customer is not in list add to the list
                if(isNew)
                {
                    clist.AddItem(this.getCustomer());
                }
            }
            Response.Redirect("Contactlist.aspx");
        }
    }

    private Customer getCustomer()
    {
        //PostCondition  Creates a new customer object based on what the user selects in the 
        //dropdown list
        //get row from SqlDataSource based on value in dropdownlist
        DataView customerTable = (DataView)SqlDataSource1.Select(DataSourceSelectArguments.Empty);
        customerTable.RowFilter = "CustomerID = '" + Convert.ToInt32(DDLCustomers.SelectedValue) + "'";
        DataRowView row = (DataRowView)customerTable[0];

        //create a new customer object and load with data from row
        return new Customer(Convert.ToInt32(row["CustomerID"]),
            row["Name"].ToString(), row["Address"].ToString(),
            row["City"].ToString(), row["State"].ToString(),
            row["ZipCode"].ToString(), row["Phone"].ToString(),
            row["Email"].ToString()); 
    }
}