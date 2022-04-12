<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_CuisineDelight.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
         <h1>Admin Login</h1><hr />
         <div class="row">

             <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" OnAuthenticate="Login1_Authenticate" DestinationPageUrl="~/Admin/Dashboard.aspx" Width="396px" BorderPadding="4" ForeColor="#333333">
                 <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                 <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                 <TextBoxStyle Font-Size="0.8em" />
                 <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
             </asp:Login>
         </div>
     </div>
</asp:Content>
