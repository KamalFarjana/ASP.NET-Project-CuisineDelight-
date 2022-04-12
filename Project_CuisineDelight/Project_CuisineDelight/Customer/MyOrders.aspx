<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="MyOrders.aspx.cs" Inherits="Project_CuisineDelight.Customer.MyOrders" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
        <LoggedInTemplate>
            <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
            <br />
            <div class="container">
                <h1>My Orders</h1>
                <hr />
                <div class="row">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" CellPadding="4" Width="1091px" ForeColor="#333333" GridLines="None" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" InsertVisible="False" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="Order_Fulfilled_Date" HeaderText="Order_Fulfilled_Date" SortExpression="Order_Fulfilled_Date" />
                            <asp:BoundField DataField="Order_Status" HeaderText="Order_Status" SortExpression="Order_Status" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" ForeColor="White" Font-Bold="True" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle ForeColor="White" HorizontalAlign="Center" BackColor="#2461BF" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <br />
                    <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT dbo.Orders.OrderID, dbo.Orders.Order_Fulfilled_Date, dbo.Order_Packages.[TotalAmount], dbo.Orders.Order_Status FROM dbo.Orders INNER JOIN dbo.Order_Packages ON dbo.Orders.OrderID = dbo.Order_Packages.OrderID WHERE  dbo.Orders.UserId = (SELECT UserId FROM [Users] WHERE ([UserName] = @UserName))">
                        <SelectParameters>
                            <asp:SessionParameter Name="UserName" SessionField="UserName" Type="Object" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <br /><br />
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="Cancel Order" OnClick="Button1_Click" /> 
                    <asp:Button ID="Button2" runat="server" Text="Update Fulfillment date" OnClick="Button2_Click" />
                </div>
                <br /><br />
            </div>
     </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
