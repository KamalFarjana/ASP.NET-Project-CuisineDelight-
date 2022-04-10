<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ManageCaterer.aspx.cs" Inherits="Project_CuisineDelight.Admin.ManageCaterer" %>
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
                <h1>Manage Caterer</h1>
                <hr />
                <div class="row">
                    <asp:GridView ID="GridView1" runat="server" BackColor="#DEBA84" BorderColor="#DEBA84" BorderStyle="None" BorderWidth="1px" CellPadding="3" CellSpacing="2" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                        <Columns>
                            <asp:CommandField ShowSelectButton="True" />
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
                <br /><br />
                <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                <br />
                <asp:Button ID="Button1" runat="server" Text="Approve account" OnClick="Button1_Click" />
                <asp:Button ID="Button2" runat="server" Text="Disable account" OnClick="Button2_Click" />
                <asp:Button ID="Button3" runat="server" Text="Delete account" OnClick="Button3_Click" />
            </div>
            
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" SelectCommand="SELECT [UserId], [Email], [IsApproved], [CreateDate] FROM [Memberships] ORDER BY [CreateDate] DESC"></asp:SqlDataSource>
    <%-- </LoggedInTemplate>
    </asp:LoginView>--%>
</asp:Content>
