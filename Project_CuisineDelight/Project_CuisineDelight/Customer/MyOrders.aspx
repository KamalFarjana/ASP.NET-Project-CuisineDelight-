<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Project_CuisineDelight.Customer.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
        <LoggedInTemplate>--%>
            <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
            <br />
            <div class="container">
                <h1>My Orders</h1>
                <hr />
                <div class="row">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="Order_Fulfilled_Date" HeaderText="Order_Fulfilled_Date" SortExpression="Order_Fulfilled_Date" />
                            <asp:BoundField DataField="Order_Status" HeaderText="Order_Status" SortExpression="Order_Status" />
                        </Columns>
                        <FooterStyle BackColor="#F7DFB5" ForeColor="#8C4510" />
                        <HeaderStyle BackColor="#A55129" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="#8C4510" HorizontalAlign="Center" />
                        <RowStyle BackColor="#FFF7E7" ForeColor="#8C4510" />
                        <SelectedRowStyle BackColor="#738A9C" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#FFF1D4" />
                        <SortedAscendingHeaderStyle BackColor="#B95C30" />
                        <SortedDescendingCellStyle BackColor="#F1E5CE" />
                        <SortedDescendingHeaderStyle BackColor="#93451F" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT dbo.Orders.OrderID, dbo.Orders.Order_Fulfilled_Date, dbo.Order_Packages.[Total Amount], dbo.Orders.Order_Status FROM dbo.Orders INNER JOIN dbo.Order_Packages ON dbo.Orders.OrderID = dbo.Order_Packages.OrderID WHERE  dbo.Orders.UserId = (SELECT UserId FROM [Users] WHERE ([UserName] = @UserName))">
                        <SelectParameters>
                            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="Object" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br /><br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Cancel Order" OnClick="Button1_Click" />
                </div>
                <br />
</asp:Content>
