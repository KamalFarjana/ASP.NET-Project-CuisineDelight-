<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_CuisineDelight.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:FormView ID="UserProfileView" runat="server">
                 <ItemTemplate>
                     <table style="width: 100%;">
                         <tr>
                             <td>
                                 <asp:Label ID="Label2" runat="server" Text='<%# Eval("FirstName") %>'></asp:Label>
                             </td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                         <tr>
                             <td>
                                 <asp:Label ID="Label3" runat="server" Text='<%# Eval("LastName") %>'></asp:Label>
                             </td>
                             <td>&nbsp;</td>
                             <td>&nbsp;</td>
                         </tr>
                     </table>
                 </ItemTemplate>
             </asp:FormView>
               <asp:ChangePassword ID="ChangePassword1" runat="server" BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" Height="200px" Width="600px" OnChangedPassword="ChangePassword1_ChangedPassword">
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
    </form>
</body>
</html>
