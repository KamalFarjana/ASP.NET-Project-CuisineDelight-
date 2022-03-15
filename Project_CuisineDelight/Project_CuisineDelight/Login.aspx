<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_CuisineDelight.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div style="margin-top:50px">
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
    </div>
    <div>
         <asp:LoginView ID="LoginView1" runat="server">
               <AnonymousTemplate>
                 <asp:Login ID="Login1" runat="server" CreateUserUrl="SignUp.aspx"
                 DestinationPageUrl="~/Default.aspx"
                 CreateUserText="Not registere? Create a new account" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#333333" PasswordRecoveryText="Forgot Password?" PasswordRecoveryUrl="~/ForgotPassword.aspx">
                     <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                     <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                     <TextBoxStyle Font-Size="0.8em" />
                     <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="0.9em" ForeColor="White" />
                 </asp:Login>
               </AnonymousTemplate>
               <LoggedInTemplate>
                   You are already logged in.
               </LoggedInTemplate>
          </asp:LoginView>
    </div>
   
</asp:Content>
