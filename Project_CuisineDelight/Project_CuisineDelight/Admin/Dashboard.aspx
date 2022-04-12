<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_CuisineDelight.Admin.Dashboard" %>
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
                    <h1>Dashboard</h1><hr />
                    <div class="row">
                        <div class="col-md-3 text-center" style="border:solid black 1px; margin:10px;">
                            <h3>Total Orders</h3><br /><br />
                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                            <br />
                        </div>
                        <div class="col-md-3 text-center" style="border:solid black 1px; margin:10px;">
                            <h3>Not Confirmed Orders (Pending)</h3><br />
                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                            <br />
                        </div>
                        <div class="col-md-3 text-center" style="border:solid black 1px; margin:10px;">
                            <h3>Confirmed Orders (Confirmed)</h3><br />
                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                            <br />
                        </div>
                    </div>
                    <br />
                    <div  class="row">
                        <div class="col-md-3 text-center" style="border:solid black 1px; margin:10px;">
                            <h3>Total Orders being prepared (Preparing)</h3><br />
                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                            <br />
                        </div>
                        <div class="col-md-3 text-center" style="border:solid black 1px; margin:10px;">
                            <h3>Total Cancelled Orders (Cancelled)</h3><br />
                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                            <br />
                        </div>
                        <div class="col-md-3 text-center" style="border:solid black 1px; margin:10px;">
                            <h3>Total Registered Customers</h3><br />
                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                            <br />
                        </div>
                    </div>
                    <br />
                    <h1>Queries</h1><hr />
                    <div class="row">
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="QueryID" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="1099px">
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:BoundField DataField="QueryID" HeaderText="QueryID" InsertVisible="False" ReadOnly="True" SortExpression="QueryID" />
                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                            </Columns>
                            <EditRowStyle BackColor="#2461BF" />
                            <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EFF3FB" />
                            <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#F5F7FB" />
                            <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                            <SortedDescendingCellStyle BackColor="#E9EBEF" />
                            <SortedDescendingHeaderStyle BackColor="#4870BE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT * FROM [Queries]"></asp:SqlDataSource>
                    </div>
                </div>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
