<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Report.aspx.cs" Inherits="Project_CuisineDelight.Admin.Report" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <%--<asp:LoginView ID="LoginView1" runat="server" OnViewChanged="LoginView1_ViewChanged">
        <LoggedInTemplate>--%>
            <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
    <br /><br />
    <div class="container">
    <h1>Report</h1>
    <hr />
    <div class="row">
        <div class="col-md-6 text-center">
            <h3>Report #1</h3>
            <div class="col-md-5">
                <br /> <br /><br />
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataSourceID="chart1" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2">
                    <Columns>
                        <asp:BoundField DataField="Month" HeaderText="Month" ReadOnly="True" SortExpression="Month" />
                        <asp:BoundField DataField="Total_Sale" HeaderText="Total_Sale" ReadOnly="True" SortExpression="Total_Sale" />
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
                <asp:SqlDataSource ID="chart1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="select month(Orders.Order_Fulfilled_Date) as Month,sum(Order_Packages.[TotalAmount]) as Total_Sale from Orders inner join Order_Packages on Orders.OrderID = Order_Packages.OrderID group by month(Order_Fulfilled_Date) order by month(Order_Fulfilled_Date)"></asp:SqlDataSource>
            </div>
            <div class="col-md-5" style="margin-right:10px;">
                <asp:Chart ID="Chart3" runat="server" DataSourceID="chart1">
                    <Series>
                        <asp:Series Name="Series1"  XValueMember="Month" YValueMembers="Total_Sale"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
            </div>
        </div>

        <div class="col-md-6 text-center" style="border-left: 1px solid grey;">
            <h3>Report #2</h3>
            <div  class="col-md-5">
                    <br /> <br /><br />
                <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="Chart2" AutoGenerateColumns="False">
                    <Columns>
                        <asp:BoundField DataField="Order_Status" HeaderText="Order_Status" SortExpression="Order_Status" />
                        <asp:BoundField DataField="Total" HeaderText="Total" ReadOnly="True" SortExpression="Total" />
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
            </div>
            <div  class="col-md-5">
                <asp:Chart ID="Chart4" runat="server" DataSourceID="Chart2">
                    <Series>
                        <asp:Series Name="Series1" ChartType="Pie" XValueMember="Order_Status" YValueMembers="Total"></asp:Series>
                    </Series>
                    <ChartAreas>
                        <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                    </ChartAreas>
                </asp:Chart>
                <asp:SqlDataSource ID="Chart2" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT Order_Status, COUNT(OrderID) as Total FROM Orders GROUP BY Order_Status"></asp:SqlDataSource>
            </div>
        </div>
    </div>
    </div>
    <%-- </LoggedInTemplate>
    </asp:LoginView>--%>
</asp:Content>
