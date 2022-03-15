<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Project_CuisineDelight.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div style="margin-top:50px">
         <asp:LoginView ID="LoginView1" runat="server">
          
             <LoggedInTemplate>
                     (<asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Default.aspx" />)
             </LoggedInTemplate>  
         </asp:LoginView>
    </div>
</asp:Content>
