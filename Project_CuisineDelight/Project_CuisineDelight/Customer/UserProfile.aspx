<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Project_CuisineDelight.UserProfile" %>

<%@ Register Src="~/Customer/UserProfileForm.ascx" TagPrefix="uc1" TagName="UserProfileForm" %>
<%@ Register Src="~/Customer/UserProfileImage.ascx" TagPrefix="uc1" TagName="UserProfileImage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <asp:LoginView ID="LoginView1" runat="server">
          <LoggedInTemplate>
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-md-4" style="padding:2em;min-height:650px;background-color: #336699; background-image: none;" >
                               <div class="card">
                                  <div class="card-body">
                                      <div class="row" >
                                         <div class="col">
                                             <div class="text-center">
                                                 <h1 style="color: #FFFFFF"><asp:LoginName ID="LoginName1" runat="server" FormatString=" {0}" /></h1>
                                                 <span style="color: #FFFFFF">Account Status - </span>   
                                                 <asp:Label class="badge badge-pill badge-info" runat="server" Text="Acitve"  BackColor="green"></asp:Label>
                                             </div>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col">
                                             <%--<div class="text-center">
                                                 <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="https://cdn-icons-png.flaticon.com/512/149/149071.png" Width="200px" />
                                             </div>--%>
                                              <div class="text-center" style="margin-left:23%">
                                                  <uc1:UserProfileImage runat="server" ID="UserProfileImage" />
                                              </div>
                                         </div>
                                     </div>
                                     <div class="row">
                                         <div class="col" style="color: #FFFFFF">
                                             <center>
                                                          <asp:FileUpload ID="FileUpload1" runat="server"/>
                                             </center>                                            
                                         </div>
                                     </div>
                                      <br />
                                     <div class="row">
                                         <div class="col">
                                             <div class="text-center">                                                
                                                 <asp:Button runat="server" Text="Change Picture" CssClass="btn btn-primary" OnClick="ChanegPicture_Click" />                                           
                                             </div>
                                         </div>
                                     </div>
                                      <br />
                                     
                                   
                                   
                                  </div>
                                </div>
                            
                        </div>
                        <div class="col-md-1">

                        </div>
                         <div class="col-md-7"  style=" padding:2em;min-height:650px">
                             
                                      <div class="row">
                                          <h2>Edit Profile</h2>
                                          <uc1:UserProfileForm runat="server" id="UserProfileForm" />
                                      </div> 
                             <br />
                                      <div class="row">
                                        <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" Height="200px" Width="600px">
                                             <CancelButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"></CancelButtonStyle>
                    
                                             <ChangePasswordButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"></ChangePasswordButtonStyle>

                                            <ChangePasswordTemplate>
                                                <table cellspacing="0" cellpadding="4" style="border-collapse: collapse;">
                                                    <tr>
                                                        <td>
                                                            <table cellpadding="0" style="height: 200px; width: 600px;">
                                                                <tr>
                                                                    <td align="center" colspan="2" style="color: White; background-color: #507CD1; font-size: Large; font-weight: bold;">Change Your Password</td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <asp:Label runat="server" AssociatedControlID="CurrentPassword" ID="CurrentPasswordLabel">Password:</asp:Label></td>
                                                                    <td>
                                                                        <asp:TextBox runat="server" TextMode="Password" Font-Size="Large" ID="CurrentPassword"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="CurrentPassword" ErrorMessage="Password is required." ValidationGroup="ChangePassword1" ToolTip="Password is required." ID="CurrentPasswordRequired">*</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <asp:Label runat="server" AssociatedControlID="NewPassword" ID="NewPasswordLabel">New Password:</asp:Label></td>
                                                                    <td>
                                                                        <asp:TextBox runat="server" TextMode="Password" Font-Size="Large" ID="NewPassword"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="NewPassword" ErrorMessage="New Password is required." ValidationGroup="ChangePassword1" ToolTip="New Password is required." ID="NewPasswordRequired">*</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="right">
                                                                        <asp:Label runat="server" AssociatedControlID="ConfirmNewPassword" ID="ConfirmNewPasswordLabel">Confirm New Password:</asp:Label></td>
                                                                    <td>
                                                                        <asp:TextBox runat="server" TextMode="Password" Font-Size="Large" ID="ConfirmNewPassword"></asp:TextBox>
                                                                        <asp:RequiredFieldValidator runat="server" ControlToValidate="ConfirmNewPassword" ErrorMessage="Confirm New Password is required." ValidationGroup="ChangePassword1" ToolTip="Confirm New Password is required." ID="ConfirmNewPasswordRequired">*</asp:RequiredFieldValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="2">
                                                                        <asp:CompareValidator runat="server" ControlToCompare="NewPassword" ControlToValidate="ConfirmNewPassword" ErrorMessage="The Confirm New Password must match the New Password entry." Display="Dynamic" ValidationGroup="ChangePassword1" ID="NewPasswordCompare"></asp:CompareValidator>
                                                                    </td>
                                                                </tr>
                                                                <tr>
                                                                    <td align="center" colspan="2" style="color: Red;">
                                                                        <asp:Literal runat="server" ID="FailureText" EnableViewState="False"></asp:Literal>
                                                                    </td>
                                                                </tr>
                                                                <tr align="center">
                                                                    <td align="right">
                                                                        <asp:Button runat="server" CommandName="ChangePassword" Text="Change Password" ValidationGroup="ChangePassword1" BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98" ID="ChangePasswordPushButton"></asp:Button>
                                                                    </td>
                                                                    <td>
                                                                        <asp:Button runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98" ID="CancelPushButton"></asp:Button>
                                                                    </td>
                                                                </tr>
                                                            </table>
                                                        </td>
                                                    </tr>
                                                </table>
                                            </ChangePasswordTemplate>

                                             <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"></ContinueButtonStyle>

                                             <InstructionTextStyle Font-Italic="True" ForeColor="Black"></InstructionTextStyle>

                                             <PasswordHintStyle Font-Italic="True" ForeColor="#507CD1"></PasswordHintStyle>

                                             <SuccessTemplate>
                                                 <table cellpadding="4" cellspacing="0" style="border-collapse:collapse;">
                                                     <tr>
                                                         <td>
                                                             <table cellpadding="0" style="height:200px;width:600px;">
                                                                 <tr>
                                                                     <td align="center" style="color:White;background-color:#507CD1;font-size:Large;font-weight:bold;">Change Password Complete</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td align="center">Your password has been changed!</td>
                                                                 </tr>
                                                                 <tr>
                                                                     <td align="right">
                                                                         <asp:Button ID="ContinuePushButton" runat="server" BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" CausesValidation="False" CommandName="Continue" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98" Text="Continue" OnClick="ContinuePushButton_Click" />
                                                                     </td>
                                                                 </tr>
                                                             </table>
                                                         </td>
                                                     </tr>
                                                 </table>
                                             </SuccessTemplate>

                                             <TextBoxStyle Font-Size="Large"></TextBoxStyle>

                                             <TitleTextStyle BackColor="#507CD1" Font-Bold="True" Font-Size="Large" ForeColor="White"></TitleTextStyle>
                                         </asp:ChangePassword>
                                      </div> 
                               <br />
                                       <%--<div class="row">
                                         <div class="col">
                                             <div>
                                                 <a href="#" class="btn btn-primary btn-lg active" role="button" aria-pressed="true">Edit My Wallet</a>
                                            
                                             </div>
                                         </div>
                                     </div>--%>
                                 
                        </div>
                    </div>
            </div>             
          </LoggedInTemplate>  
      </asp:LoginView>
    


    
      

</asp:Content>
