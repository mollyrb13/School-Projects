<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="CustRegistration.aspx.cs" Inherits="CustRegistration" %>

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
    <h1>Customer Registration</h1>
        <br />
 
    <div class="row">
        <div class="col-sm-4" >
            <label for="FirstName">First Name</label>
            <asp:TextBox ID="tbfirst" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="LastName">Last Name</label>
            <asp:TextBox ID="tblast" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-sm-4" >
            <label for="CarID">Car Purchased (Car ID)</label>
            <asp:TextBox ID="tbCarID" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="CustomerID">Customer ID</label>
            <asp:TextBox ID="tbCustID" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
    <br/>
    <div class="row">
        <div class="col-sm-4" >
            <label for="PhoneNum">Phone Number</label>
            <asp:TextBox ID="tbPhoneNum" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="Addr">Street Address</label>
            <asp:TextBox ID="tbAddr" runat="server" class="form-control"></asp:TextBox>
        </div>
    </div>
        <br />
    <div class="row">
        <div class="col-sm-4" >
            <label for="City">City</label>
            <asp:TextBox ID="tbCity" runat="server" class="form-control"></asp:TextBox>
        </div>
        <div class="col-sm-4" >
            <label for="State">State</label>
            <asp:TextBox ID="tbState" runat="server" class="form-control"></asp:TextBox>
    </div>
        </div>
        <br />
    <br/>
    <br/>
    <div class="row">
        <div class="col-sm-8" >
            <asp:Button class="btn btn-default btn-lg" ID="Button1" runat="server" Height="51px" Width="186px" OnClick="Button1_Click" Text="Register Customer" />
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

