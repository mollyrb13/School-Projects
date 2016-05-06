<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Customer.aspx.cs" Inherits="Customer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div style="height: 491px">
    
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1>Customer Database</h1>
        <br />
        <br />
        <p>First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Last Name</p>
        <div class="row">
            <div class="col-md-2">
        <asp:TextBox ID="tbFirstName" runat="server" Height="27px" style="border-radius: 4px"></asp:TextBox>
            </div>
            <div class="col-md-2">
        <asp:TextBox ID="tbLastName" runat="server" Height="27px" style="border-radius: 4px"></asp:TextBox>
                </div>
            </div>
        <br />
        <br />
        <asp:Button class="btn btn-default btn-md" ID="CustomerSearch" runat="server" Font-Names="Franklin Gothic Book" Font-Size="Large" Height="34px" Text="Find Customer" Width="133px" OnClick="CustomerSearch_Click" />
        <br />
        <br />
        <br />
        <asp:GridView CssClass="newStyle2" ID="PeopleSearchGrid" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CarId" DataSourceID="PeopleSearch">
            <Columns>
                <asp:BoundField DataField="firstname" HeaderText="firstname" SortExpression="firstname" />
                <asp:BoundField DataField="lastname" HeaderText="lastname" SortExpression="lastname" />
                <asp:BoundField DataField="CarId" HeaderText="CarId" ReadOnly="True" SortExpression="CarId" />
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                <asp:BoundField DataField="Maintenance" HeaderText="Maintenance" SortExpression="Maintenance" />
                <asp:BoundField DataField="Phone" HeaderText="Phone" SortExpression="Phone" />
                <asp:BoundField DataField="Addr1" HeaderText="Addr1" SortExpression="Addr1" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                <asp:BoundField DataField="State" HeaderText="State" SortExpression="State" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="PeopleSearch" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT p.firstname, p.lastname, c.CarId, c.Model, c.Warranty, c.Maintenance, p.Phone, p.Addr1, p.City, p.State
FROM People p, Cars c
WHERE p.CarID = c.CarId AND p.firstname = @firstname AND p.lastname = @lastname">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbFirstName" Name="firstname" PropertyName="Text" />
                <asp:ControlParameter ControlID="tbLastName" Name="lastname" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="Showall" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT p.firstname, p.lastname, c.CarId, c.Model, c.Warranty, c.Maintenance, p.Phone, p.Addr1, p.City, p.State
FROM People p, Cars c
WHERE p.CarID = c.CarId"></asp:SqlDataSource>
        <br />
    </div>
    </form>
</asp:Content>