<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Maintenance.aspx.cs" Inherits="Maintenance" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1>Maintenance Lookup</h1>
            <br />
            <br />
           
<p>Car Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Car ID</p>
         <div class="row">
            <div class="col-md-2">
        <asp:DropDownList ID ="ddlModel" runat="server" Height="27px" style="border-radius: 4px" Width="175px" AppendDataBoundItems="True" OnSelectedIndexChanged="ddlModel_SelectedIndexChanged">
                    <asp:ListItem Selected="True">Select</asp:ListItem>
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
             <div class="col-md-2">
             <asp:TextBox ID="tbCarID" runat="server" Height="27px" style="border-radius: 4px"></asp:TextBox>
                </div>
             </div>
        <br />
        <br />
        <asp:Button class="btn btn-default btn-md" ID="PartsSearch" runat="server" Font-Names="Franklin Gothic Book" Font-Size="Large" Height="34px" Text="Search" Width="81px" OnClick="PartsSearch_Click" />
        <br />
        <br />
        <asp:GridView CssClass="newStyle2" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CarId" DataSourceID="MaintenanceDataSource">
            <Columns>
                <asp:BoundField DataField="CarId" HeaderText="CarId" ReadOnly="True" SortExpression="CarId" />
                <asp:BoundField DataField="lastmain" HeaderText="lastmain" SortExpression="lastmain" />
                <asp:BoundField DataField="schedmain" HeaderText="schedmain" SortExpression="schedmain" />
                <asp:BoundField DataField="Sold" HeaderText="Sold" SortExpression="Sold" />
                <asp:BoundField DataField="Repairs" HeaderText="Repairs" SortExpression="Repairs" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="MaintenanceDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT c.CarId, m.lastmain, m.schedmain, c.Sold, m.Repairs
FROM Cars c, Maintenance m
WHERE m.Cid = c.CarId AND c.Model = @Model">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="ModelCarID" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT c.CarId, m.lastmain, m.schedmain, c.Sold, m.Repairs
FROM Cars c, Maintenance m
WHERE m.Cid = c.CarId AND c.Model = @Model AND c.CarId = @CarID">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="tbCarID" Name="CarID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="CarID" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT c.CarId, m.lastmain, m.schedmain, c.Sold, m.Repairs
FROM Cars c, Maintenance m
WHERE m.Cid = c.CarId AND c.CarId = @CarID">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbCarID" Name="CarID" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
   </asp:Content>

