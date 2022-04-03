<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="CatererMenu.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.CatererMenu" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button"  PostBackUrl="~/CatererFolder/CatererAddingItem.aspx"/>
    </div>

</asp:Content>
