<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Parts.aspx.cs" Inherits="Parts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <div style="height: 439px">
    
       
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <h1>Parts Database</h1>
        <br />
        <br />
<p>Part Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Car Model</p>
        <div class="row">
            <div class="col-md-2">
        <asp:TextBox ID="tbPartName" runat="server" Height="27px" style="border-radius: 4px"></asp:TextBox>
                </div>
            <div class ="col-md-2">
        <asp:DropDownList ID ="ddlModel" runat="server" Height="27px" style="border-radius: 4px" Width="175px">
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
            </div>
        <br />
        <br />
<asp:Button class="btn btn-default btn-md" ID="PartsSearch" runat="server" Font-Names="Franklin Gothic Book" Font-Size="Large" Height="34px" Text="Search" Width="81px" OnClick="PartsSearch_Click" />
<br />
        <br />
        <asp:GridView CssClass="newStyle2" ID="GridView1" runat="server" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="CarId" DataSourceID="PartsDataSource" Visible="False">
            <Columns>
                <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Detail" HeaderText="Detail" SortExpression="Detail" />
                <asp:BoundField DataField="CarId" HeaderText="CarId" ReadOnly="True" SortExpression="CarId" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            </Columns>
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="PartsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT c.Model, c.Year, p.Name, p.Detail, c.CarId
FROM Cars c, Parts p, PartsCars pc
WHERE c.CarId = pc.Cid AND p.Pid = pc.Pid AND c.Model = @Model AND p.Name = @Name
Order By c.CarId">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" />
                <asp:ControlParameter ControlID="tbPartName" Name="Name" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="ModelOnly" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT c.Model, c.Year, p.Name, p.Detail, c.CarId
FROM Cars c, Parts p, PartsCars pc
WHERE c.CarId = pc.Cid AND p.Pid = pc.Pid AND c.Model = @Model
ORDER BY c.CarId">
            <SelectParameters>
                <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" />
            </SelectParameters>
        </asp:SqlDataSource>
        <asp:SqlDataSource ID="PartOnly" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT c.Model, c.Year, p.Name, p.Detail, c.CarId
FROM Cars c, Parts p, PartsCars pc
WHERE c.CarId = pc.Cid AND p.Pid = pc.Pid AND p.Name = @Name
ORDER BY c.CarId">
            <SelectParameters>
                <asp:ControlParameter ControlID="tbPartName" Name="Name" PropertyName="Text" />
            </SelectParameters>
        </asp:SqlDataSource>
        <br />
    
    </div>
    </form>
    </asp:Content>