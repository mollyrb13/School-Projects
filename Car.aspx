<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Car.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</asp:Content>
    
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <form id="form1" runat="server">
    <br />
    <br />
    <br />
    <br />
    <br />
    <br />

        <h1>Car Database</h1>
        <br />
        <br />
        <p>Model&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Year</p>
            <div class="row">
            <div class="col-md-2">
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
            <div class="col-md-2">
            <asp:TextBox ID="tbYear" runat="server" Height="27px" style="border-radius: 4px"></asp:TextBox>
            </div> 
            </div>
        <br />
        <br />
        <p>
            <asp:Button class="btn btn-default btn-md" ID="CarSearch" runat="server" Font-Names="Franklin Gothic Book" Font-Size="Large" Height="34px" Text="Search" Width="81px" OnClick="CarSearch_Click" />
        </p>
        <p>
            <asp:Image ID="CarImg" runat="server" BorderStyle="Solid" BorderWidth="3px" Height="173px" Visible="False" Width="291px" />
        </p>
        <p>
            <asp:GridView CssClass="newStyle2" ID="CarResult" runat="server" AllowSorting="True" DataSourceID="Year" AutoGenerateColumns="False" DataKeyNames="CarId">
                <Columns>
                    <asp:BoundField DataField="CarId" HeaderText="CarId" ReadOnly="True" SortExpression="CarId" />
                    <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                    <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                    <asp:BoundField DataField="MPG" HeaderText="MPG" SortExpression="MPG" />
                    <asp:BoundField DataField="Color" HeaderText="Color" SortExpression="Color" />
                    <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                    <asp:BoundField DataField="Sold" HeaderText="Sold" SortExpression="Sold" />
                    <asp:BoundField DataField="Maintenance" HeaderText="Maintenance" SortExpression="Maintenance" />
                    <asp:BoundField DataField="Warranty" HeaderText="Warranty" SortExpression="Warranty" />
                    <asp:BoundField DataField="BackOrder" HeaderText="BackOrder" SortExpression="BackOrder" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                </Columns>
            </asp:GridView>
        </p>
        <p>
            <asp:SqlDataSource ID="Year" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Cars WHERE @Year = Year">
                <SelectParameters>
                    <asp:ControlParameter ControlID="tbYear" Name="Year" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="Model" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Cars WHERE @Model = Model">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" />
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:SqlDataSource ID="ModelYear" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM Cars WHERE @Model = Model AND @Year = Year">
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlModel" Name="Model" PropertyName="SelectedValue" />
                    <asp:ControlParameter ControlID="tbYear" Name="Year" PropertyName="Text" />
                </SelectParameters>
            </asp:SqlDataSource>
        </p>
    </form>
  
    </asp:Content>
