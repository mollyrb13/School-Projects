using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void CarHome_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("HomePage.aspx");
    //}

    protected void CarSearch_Click(object sender, EventArgs e)
    {
        // User enters only a Year
        if (ddlModel.SelectedValue == "Select")
        {
            CarResult.DataSourceID = "Year";
            CarImg.Visible = false;
        }
        // User enters only a Model
        else if (tbYear.Text == "")
        {
            CarResult.DataSourceID = "Model";
        }
        // User enters a Make and Year
        else
        {
            CarResult.DataSourceID = "ModelYear";
        }
        CarResult.Visible = true;
        // if any Honda model is entered
        if (ddlModel.SelectedValue != "Select")
        {
            CarImg.Visible = true;
            switch (ddlModel.SelectedValue.ToUpper())
            {
                case "ACCORD":
                    CarImg.ImageUrl = "~/Images/accord.jpg";
                    break;
                case "AVALANCHE":
                    CarImg.ImageUrl = "~/Images/avalanche.jpg";
                    break;
                case "CIVIC":
                    CarImg.ImageUrl = "~/Images/Civic.jpg";
                    break;
                case "CR-V":
                    CarImg.ImageUrl = "~/Images/CR-V.jpg";
                    break;
                case "CRV":
                    CarImg.ImageUrl = "~/Images/CR-V.jpg";
                    break;
                case "CR-Z":
                    CarImg.ImageUrl = "~/Images/CR-Z.jpg";
                    break;
                case "CRZ":
                    CarImg.ImageUrl = "~/Images/CR-Z.jpg";
                    break;
                case "FIT":
                    CarImg.ImageUrl = "~/Images/FIT.jpg";
                    break;
                case "ODYSSEY":
                    CarImg.ImageUrl = "~/Images/oddysey.jpg";
                    break;
                case "PILOT":
                    CarImg.ImageUrl = "~/Images/Pilot.jpg";
                    break;
                default:
                    CarImg.Visible = false;
                    break;
            }
        }
    }
}