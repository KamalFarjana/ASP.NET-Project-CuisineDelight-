<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Project_CuisineDelight.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div style="margin-top:50px">
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
      </div>
      <div class="container-fluid" style="margin-left:30%">
      <div class="row">
        <div class="col"> 
            <div class="text-center">
         <asp:LoginView ID="LoginView1" runat="server">
               <AnonymousTemplate>
                 <asp:Login ID="Login1" runat="server" CreateUserUrl="SignUp.aspx"
                 DestinationPageUrl="~/Default.aspx"
                 CreateUserText="Not register? Create a new account" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="2px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#333333" PasswordRecoveryText="Forgot Password?" PasswordRecoveryUrl="~/ForgotPassword.aspx" Height="200px" Width="600px">
                     <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                     <LayoutTemplate>
                         <table cellpadding="1" cellspacing="0" style="border-collapse:collapse;">
                             <tr>
                                 <td>
                                     <table cellpadding="0" style="height:200px;width:600px;">
                                         <tr>
                                             <td align="center" colspan="2" style="color:White;background-color:#507CD1;font-size:Large;font-weight:bold;">Log In</td>
                                         </tr>
                                         <tr>
                                             <td align="right">
                                                 <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">User Name:</asp:Label>
                                             </td>
                                             <td>
                                                 <asp:TextBox ID="UserName" runat="server" Font-Size="Large"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="ctl07$Login1">*</asp:RequiredFieldValidator>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td align="right">
                                                 <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                             </td>
                                             <td>
                                                 <asp:TextBox ID="Password" runat="server" Font-Size="Large" TextMode="Password"></asp:TextBox>
                                                 <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="ctl07$Login1">*</asp:RequiredFieldValidator>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td colspan="2">
                                                 <asp:CheckBox ID="RememberMe" runat="server" Text="Remember me next time." />
                                             </td>
                                         </tr>
                                         <tr>
                                             <td align="center" colspan="2" style="color:Red;">
                                                 <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>
                                             </td>
                                         </tr>
                                         <tr>
                                             <td align="right" colspan="2">
                                                 <asp:Button ID="LoginButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CommandName="Login" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98" Text="Log In" ValidationGroup="ctl07$Login1" />
                                             </td>
                                         </tr>
                                         <tr>
                                             <td colspan="2">
                                                 <asp:HyperLink ID="CreateUserLink" runat="server" NavigateUrl="SignUp.aspx">Not register? Create a new account</asp:HyperLink>
                                                 <br />
                                                 <asp:HyperLink ID="PasswordRecoveryLink" runat="server" NavigateUrl="~/ForgotPassword.aspx">Forgot Password?</asp:HyperLink>
                                             </td>
                                         </tr>
                                     </table>
                                 </td>
                             </tr>
                         </table>
                     </LayoutTemplate>
                     <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold"  Font-Size="Large" ForeColor="#284E98" />
                     <TextBoxStyle Font-Size="Large" />
                     <TitleTextStyle BackColor="#507CD1" Font-Bold="True"  Font-Size="Large" ForeColor="White" />
                 </asp:Login>
               </AnonymousTemplate>
               <LoggedInTemplate>
                   You are already logged in.
               </LoggedInTemplate>
          </asp:LoginView>
       </div>       
      </div>
    </div>
  </div>
   
</asp:Content>
