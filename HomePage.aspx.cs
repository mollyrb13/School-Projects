using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class HomePage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Car.aspx");
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Customer.aspx");
    }

    protected void PartsButton_Click(object sender, EventArgs e)
    {
        Response.Redirect("Parts.aspx");
    }

    protected void MaintenanceBtn_Click(object sender, EventArgs e)
    {
        Response.Redirect("Maintenance.aspx");
    }
}