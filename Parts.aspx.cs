using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Parts : System.Web.UI.Page
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
        // User only enters a Model Name
        if (tbPartName.Text == "")
        {
            GridView1.DataSourceID = "ModelOnly";
        }
        // User only enters a Part Name
        else if (ddlModel.SelectedValue == "Select")
        {
            GridView1.DataSourceID = "PartOnly";
        }
        // User enters a Model and Part
        else
        {
            GridView1.DataSourceID = "PartsDataSource";
        }
        GridView1.Visible = true;
    }
}