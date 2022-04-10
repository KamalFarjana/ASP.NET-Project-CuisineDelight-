<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="Project_CuisineDelight.Admin.Dashboard" %>
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
                </div>
        <%--</LoggedInTemplate>
    </asp:LoginView>--%>
</asp:Content>
