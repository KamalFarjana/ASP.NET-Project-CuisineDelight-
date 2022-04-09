<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="UserForgotPassword.aspx.cs" Inherits="Project_CuisineDelight.UserForgotPassword" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="Email" runat="server"></asp:TextBox>
    <asp:Button ID="Button1" runat="server" Text="Button" onclick="SendEmail"/>
    <asp:Label ID="Labelmessage" runat="server" Text="Label"></asp:Label>
</asp:Content>
