<%@ Page Title="" Language="C#" MasterPageFile="~/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_CuisineDelight.Admin.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" style="margin-left:30%">
         <h1>Admin Login</h1><hr />
         <div class="row">

             <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE"  BorderStyle="Solid" BorderWidth="2px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" OnAuthenticate="Login1_Authenticate" DestinationPageUrl="~/Admin/Dashboard.aspx" BorderPadding="4" ForeColor="#333333" Height="200px" Width="600px">
                 <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                 <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                 <TextBoxStyle Font-Size="0.8em" />
                 <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="#FFFFFF" Font-Size="0.9em" />
             </asp:Login>
         </div>
     </div>



</asp:Content>
