<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="SearchForOrder.aspx.cs" Inherits="Project_CuisineDelight.SearchForOrder" %>

<%@ Register Src="~/searchOrderControl.ascx" TagPrefix="uc1" TagName="searchOrderControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
        <uc1:searchOrderControl runat="server" id="searchOrderControl" />
    </div>
</asp:Content>
