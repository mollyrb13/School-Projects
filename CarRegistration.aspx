<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CarRegistration.aspx.cs" Inherits="CarRegistration" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div class="container-fluid">
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
    <h1>Car Registration</h1>
        <br />
 
    <div class="row">
        <div class="col-sm-4" >
            <label for="Model">Model</label>
            <br />
            <asp:DropDownList ID ="ddlModel" runat="server" Height="34px" style="border-radius: 4px" Width="350px" class="form-control">
                    <asp:ListItem Selected="True" Value="Select">Select</asp:ListItem>
                    <asp:ListItem>CIVIC</asp:ListItem>
                    <asp:ListItem>ACCORD</asp:ListItem>
                    <asp:ListItem>AVALANCHE</asp:ListItem>
                    <asp:ListItem>CR-V</asp:ListItem>
                    <asp:ListItem>CR-Z</asp:ListItem>
                    <asp:ListItem>PILOT</asp:ListItem>
                    <asp:ListItem>FIT</asp:ListItem>
                    <asp:ListItem>ODYSSEY</asp:ListItem>
                </asp:DropDownList>
        </div>
        <div class="col-sm-4" >
            <label for="tbCarID">Car ID</label>
            <asp:TextBox ID="tbCarID" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-sm-4" >
            <label for="Price">Price</label>
            <asp:TextBox ID="tbPrice" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="Mileage">Mileage</label>
            <asp:TextBox ID="tbMileage" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-sm-4" >
            <label for="Color">Color</label>
            <asp:TextBox ID="tbColor" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="Year">Year</label>
            <asp:TextBox ID="tbYear" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
        <br />
    <div class="row">
        <div class="col-sm-4" >
            <label for="Sold">Sold</label>
            <br />
            <asp:DropDownList ID ="ddlSold" runat="server" Height="34px" style="border-radius: 4px" Width="350px" class="form-control">
                    <asp:ListItem Selected="True" Value="Select">Select</asp:ListItem>
                    <asp:ListItem>Y</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
        </div>
        <div class="col-sm-4" >
            <label for="Backlog">Back Order</label>
            <br />
            <asp:DropDownList ID ="ddlBackOrder" runat="server" Height="34px" style="border-radius: 4px" Width="350px" class="form-control">
                    <asp:ListItem Selected="True" Value="Select">Select</asp:ListItem>
                    <asp:ListItem>Y</asp:ListItem>
                    <asp:ListItem>N</asp:ListItem>
                </asp:DropDownList>
    </div>
        </div>
        <br />
        <div class="row">
        <div class="col-sm-4" >
            <label for="Maintenance">Maintenance</label>
            <asp:TextBox ID="tbMain" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="Warranty">Warranty</label>
            <asp:TextBox ID="tbWarranty" runat="server" class="form-control"></asp:TextBox>
    </div>
    </div>
        <br/>
    <br/>
    <br/>
    <div class="row">
        <div class="col-sm-8" >
            <asp:Button class="btn btn-default btn-lg" ID="Button1" runat="server" Height="51px" Width="135px" OnClick="Button1_Click" Text="Register Car" />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        </div>
    </div>
           
</div>
    </form>
    </asp:Content>
