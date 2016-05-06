using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CarRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO Cars (CarId, Model, Price, MPG, Color, Year, Sold, Maintenance, Warranty, BackOrder) VAlUES (@CarId, @Model, @Price, @MPG, @Color, @Year, @Sold, @Maintenance, @Warranty, @BackOrder)";

        cmd.Parameters.Add("@CarId", SqlDbType.NVarChar).Value = tbCarID.Text;
        cmd.Parameters.Add("@Model", SqlDbType.NVarChar).Value = ddlModel.SelectedValue;
        cmd.Parameters.Add("@Price", SqlDbType.NVarChar).Value = tbPrice.Text;
        cmd.Parameters.Add("@MPG", SqlDbType.NVarChar).Value = tbMileage.Text;
        cmd.Parameters.Add("@Color", SqlDbType.NVarChar).Value = tbColor.Text;
        cmd.Parameters.Add("@Year", SqlDbType.NVarChar).Value = tbYear.Text;
        cmd.Parameters.Add("@Sold", SqlDbType.NVarChar).Value = ddlSold.SelectedValue;
        cmd.Parameters.Add("@Maintenance", SqlDbType.NVarChar).Value = tbMain.Text;
        cmd.Parameters.Add("@Warranty", SqlDbType.NVarChar).Value = tbWarranty.Text;
        cmd.Parameters.Add("@BackOrder", SqlDbType.NVarChar).Value = ddlBackOrder.SelectedValue;

        cmd.Connection = conn;
        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();
    }
}