<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ForgotPassword.aspx.cs" Inherits="Project_CuisineDelight.ForgotPassword1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
     </div>
     <div class="container-fluid" style="margin-left:30%">
          <div class="row">
                <div class="col"> 
                        <div class="text-center">
                             <asp:PasswordRecovery ID="PasswordRecovery1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" Height="200px" Width="600px">
                                 <SubmitButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98" />
                                 <InstructionTextStyle Font-Italic="True" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#333333" />
                                 <MailDefinition Subject="Forgetton Password" Priority="High"></MailDefinition>
                                 <SuccessTextStyle Font-Bold="True" ForeColor="#507CD1" />
                                 <TextBoxStyle Font-Size="0.8em" />
                                 <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="Large" ForeColor="White" />
                             </asp:PasswordRecovery>
                        </div>
                </div>
          </div>
    </div>
</asp:Content>
