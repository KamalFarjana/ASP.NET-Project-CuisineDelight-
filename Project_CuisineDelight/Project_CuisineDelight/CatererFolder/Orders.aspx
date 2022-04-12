<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Orders.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.MyOrders" %>
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
                <h1>Orders</h1>
                <hr />
                <div class="row">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged1" ForeColor="#333333" GridLines="None">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="Order_Fulfilled_Date" HeaderText="Order_Fulfilled_Date" SortExpression="Order_Fulfilled_Date" />
                            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
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
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CATERER_ORDER_LIST]"></asp:SqlDataSource>
                </div>
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True">
                    <asp:ListItem>---Select Status---</asp:ListItem>
                    <asp:ListItem Value="Approved">Approve</asp:ListItem>
                    <asp:ListItem Value="Rejected">Reject</asp:ListItem>
                    <asp:ListItem Value="Preparing">Preparing</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="Button1" runat="server" Text="Update status" OnClick="Button1_Click" />
                <br /><br />
                <h1>History</h1>
                <hr />
                <div class="row">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataKeyNames="OrderID" DataSourceID="SqlDataSource2">
                        <Columns>
                            <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
                            <asp:BoundField DataField="Order_Fulfilled_Date" HeaderText="Order_Fulfilled_Date" SortExpression="Order_Fulfilled_Date" />
                            <asp:BoundField DataField="TotalAmount" HeaderText="TotalAmount" SortExpression="TotalAmount" />
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
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [CATERER_ORDER_HISTORY]"></asp:SqlDataSource>
                </div>
            </div>
    <%-- </LoggedInTemplate>
    </asp:LoginView>--%>
</asp:Content>
