using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Maintenance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }


    protected void HomeParts_Click(object sender, EventArgs e)
    {
        Response.Redirect("HomePage.aspx");
    }

    protected void PartsSearch_Click(object sender, EventArgs e)
    {
        // User only enters a Car ID
        if (ddlModel.SelectedValue == "Select" && tbCarID.Text != "")
        {
            GridView1.DataSourceID = "CarID";
        }
        // User only enters a Model
        else if (ddlModel.SelectedValue != "Select" && tbCarID.Text == "")
        {
            GridView1.DataSourceID = "MaintenanceDataSource";
        }
        // User enters a Model and a CarID
        else
        {
            GridView1.DataSourceID = "ModelCarID";
        }

    }

    protected void ddlModel_SelectedIndexChanged(object sender, EventArgs e)
    {
        
    }
}