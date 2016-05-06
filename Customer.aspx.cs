using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Customer : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void HomeCust_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void CustomerSearch_Click(object sender, EventArgs e)
    {
        if (tbFirstName.Text == "" && tbLastName.Text == "")
        {
            PeopleSearchGrid.DataSourceID = "Showall";
        }
        else
        {
            PeopleSearchGrid.DataSourceID = "PeopleSearch";
        }
    }
}