<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="SignupCaterer.aspx.cs" Inherits="Project_CuisineDelight.SignupCaterer" %>
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
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server"  BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderStyle="Solid" BorderWidth="2px" Font-Names="Arial Rounded MT Bold" Font-Size="X-Large" ForeColor="#333333"  Height="200px" Width="500px" ContinueDestinationPageUrl="~/LoginSelectionAsCatereorCustomer.aspx" DisableCreatedUser="True" OnCreatedUser="CreateUserWizard1_CreatedUser">
                    <ContinueButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" ForeColor="#284E98" />
                    <CreateUserButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"  />
                    <TitleTextStyle   BackColor="#507CD1" Font-Bold="True" Font-Size="Large" ForeColor="#993366" />
                    <WizardSteps>
                        <asp:CreateUserWizardStep ID="CreateUserWizardStep1" runat="server">
                            <ContentTemplate>
                                <table cellpadding="0" style="height:200px;width:600px; margin-top: 0px;">
                                    <tr>
                                        <td align="center" colspan="2" style="color:White;background-color:#507CD1;font-size:Large;font-weight:bold;">Sign Up for Your New Account</td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName">Catering Name:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="UserName" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName" ErrorMessage="User Name is required." ToolTip="User Name is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                     <tr>
                                        <td align="right">
                                            <asp:Label ID="CateringDesciptionLabel" runat="server" AssociatedControlID="UserName">Catering Desciption:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="CateringDesciption" runat="server"></asp:TextBox>                                           
                                        </td>
                                         
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password">Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password" ErrorMessage="Password is required." ToolTip="Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="ConfirmPasswordLabel" runat="server" AssociatedControlID="ConfirmPassword">Confirm Password:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="ConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="ConfirmPasswordRequired" runat="server" ControlToValidate="ConfirmPassword" ErrorMessage="Confirm Password is required." ToolTip="Confirm Password is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right">
                                            <asp:Label ID="EmailLabel" runat="server" AssociatedControlID="Email">E-mail:</asp:Label>
                                        </td>
                                        <td>
                                            <asp:TextBox ID="Email" runat="server"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="EmailRequired" runat="server" ControlToValidate="Email" ErrorMessage="E-mail is required." ToolTip="E-mail is required." ValidationGroup="CreateUserWizard1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                     <tr>
                                <td align="right">
                                    <asp:Label ID="MobileNumberLabel" runat="server" AssociatedControlID="MobileNumber">Mobile Number:</asp:Label>
                                </td>
                                <td>
                                    <asp:TextBox ID="MobileNumber" runat="server"></asp:TextBox>
                                   
                                    <asp:RegularExpressionValidator ID="MobileNumberValidation" runat="server" Display="Dynamic" ErrorMessage="Invalid phone number. Mobile number Should be xxx-xxx-xxxx format" ValidationExpression="[0-9]{3}-[0-9]{3}-[0-9]{4}" ControlToValidate="MobileNumber" ValidationGroup="CreateUserWizard1"></asp:RegularExpressionValidator>
                                </td>
                                
                            </tr>
                                   <tr>
                                <td align="right">
                                    <asp:Label ID="AsLabel" runat="server" AssociatedControlID="AsCustomerOrCaterer">As:</asp:Label>
                                </td>
                                <td>
                                 <asp:RadioButtonList ID="AsCustomerOrCaterer" runat="server" Enabled="False" RepeatDirection="Horizontal">
                                        <asp:ListItem Value="1" >Customer</asp:ListItem>
                                        <asp:ListItem Value="2" Selected="True">Caterer</asp:ListItem>

                                </asp:RadioButtonList>
                                </td>
                            </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:CompareValidator ID="PasswordCompare" runat="server" ControlToCompare="Password" ControlToValidate="ConfirmPassword" Display="Dynamic" ErrorMessage="The Password and Confirmation Password must match." ValidationGroup="CreateUserWizard1"></asp:CompareValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color:Red;">
                                            <asp:Literal ID="ErrorMessage" runat="server" EnableViewState="False"></asp:Literal>
                                        </td>
                                    </tr>
                                </table>
                            </ContentTemplate>
                        </asp:CreateUserWizardStep>
                        <asp:CompleteWizardStep ID="CompleteWizardStep1" runat="server">
                        </asp:CompleteWizardStep>
                    </WizardSteps>
                    <HeaderStyle BackColor="#284E98" BorderColor="#EFF3FB" BorderStyle="Solid" BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" HorizontalAlign="Center" />
                    <NavigationButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" ForeColor="#284E98" />
                    <SideBarButtonStyle BackColor="#507CD1" Font-Names="Verdana" ForeColor="White" />
                    <SideBarStyle BackColor="#507CD1" Font-Size="0.9em" VerticalAlign="Top" />
                    <StepStyle Font-Size="0.8em" />
                </asp:CreateUserWizard>
            </div> 
        </div>       
      </div>
    </div>
</asp:Content>
