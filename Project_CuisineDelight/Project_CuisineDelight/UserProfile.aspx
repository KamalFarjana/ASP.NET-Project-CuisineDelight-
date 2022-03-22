<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Project_CuisineDelight.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       <div style="margin-top:50px">
         <asp:LoginView ID="LoginView1" runat="server">
          
             <LoggedInTemplate>
                 (<asp:LoginStatus ID="LoginStatus1" runat="server" LogoutAction="Redirect" LogoutPageUrl="~/Default.aspx" />)
                 <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" Height="200px" Width="600px">
                     <CancelButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"></CancelButtonStyle>
                    
                     <ChangePasswordButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"></ChangePasswordButtonStyle>

                     <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"></ContinueButtonStyle>

                     <InstructionTextStyle Font-Italic="True" ForeColor="Black"></InstructionTextStyle>

                     <PasswordHintStyle Font-Italic="True" ForeColor="#507CD1"></PasswordHintStyle>

                     <TextBoxStyle Font-Size="Large"></TextBoxStyle>

                     <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="Large" ForeColor="White"></TitleTextStyle>
                 </asp:ChangePassword>
             </LoggedInTemplate>  
         </asp:LoginView>
    </div>
</asp:Content>
