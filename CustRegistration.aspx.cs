using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class CustRegistration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        // Creating connection to local SQL Database
        SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ToString());
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO People (FirstName, LastName, CustomerId, CarID, Phone, Addr1, City, State) VAlUES (@First, @Last, @CustID, @CarID, @Phone, @Addr1, @City, @State)";

        // Inserting form control values into the database
        cmd.Parameters.Add("@First", SqlDbType.NVarChar).Value = tbfirst.Text;
        cmd.Parameters.Add("@Last", SqlDbType.NVarChar).Value = tblast.Text;
        cmd.Parameters.Add("@CustID", SqlDbType.NVarChar).Value = tbCustID.Text;
        cmd.Parameters.Add("@CarID", SqlDbType.NVarChar).Value = tbCarID.Text;
        cmd.Parameters.Add("@Phone", SqlDbType.NVarChar).Value = tbPhoneNum.Text;
        cmd.Parameters.Add("@Addr1", SqlDbType.NVarChar).Value = tbAddr.Text;
        cmd.Parameters.Add("@City", SqlDbType.NVarChar).Value = tbCity.Text;
        cmd.Parameters.Add("@State", SqlDbType.NVarChar).Value = tbState.Text;

        // Opening the connection
        cmd.Connection = conn;
        conn.Open();
        // Execute Query above here
        cmd.ExecuteNonQuery();
        // Close the Connection
        conn.Close();
    }
}