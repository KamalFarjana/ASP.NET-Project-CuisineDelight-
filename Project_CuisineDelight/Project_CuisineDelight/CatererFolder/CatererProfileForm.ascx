<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatererProfileForm.ascx.cs" Inherits="Project_CuisineDelight.CatererFolder.CatererProfileForm" %>
<asp:FormView ID="CatererProfileView" runat="server"   BackColor="#EFF3FB" BorderColor="#B5C7DE" BorderPadding="4" BorderStyle="Solid" BorderWidth="1px" Font-Names="Arial Rounded MT Bold" Font-Size="Large" Height="200px" Width="600px">
                                            <ItemTemplate >
                                                <table cellspacing="0" cellpadding="4" style="border-collapse: collapse;">
                                                    <tr>
                                                        <td>
                                                         <table cellpadding="0" style="height:200px;width:600px;">
                                                              <tr>
                                                                             <td align="center" colspan="2" style="color:White;background-color:#507CD1;font-size:Large;font-weight:bold;">Caterer Information</td>
                                                                         </tr>
                                                             <tr>
                                                                  <td align="right">Description: </td>
                                                                  <td><asp:TextBox ID="Desciption" runat="server" Text='<%# Eval("Description") %>' Width="250px"></asp:TextBox></td>
                                                             </tr>
                                                             
                                                     
                                                             <tr>
                                                                 <td align="right">Mobile Number: </td>
                                                                 <td>  <asp:TextBox ID="MobileNumber" runat="server" Text='<%# Eval("MobileNumber") %>' Width="250px"></asp:TextBox></td>
                                                                 <td style="color:Red;">
                                                           
                                                                     <asp:RegularExpressionValidator ID="MobileNumberValidation" runat="server" Display="Dynamic" ErrorMessage="Invalid phone number. Mobile number Should be xxx-xxx-xxxx format" ValidationExpression="[0-9]{3}-[0-9]{3}-[0-9]{4}" ControlToValidate="MobileNumber"></asp:RegularExpressionValidator>
                                                                </td>  
                                                             </tr>
                                                              <tr>
                                                                 <td align="right">Email: </td>
                                                                 <td>
                                                                     <asp:TextBox ID="Email" runat="server" Text='<%# Eval("Email") %>' Enabled="False" Width="250px"></asp:TextBox>
                                                                </td>
                                                             </tr>
                                                     
                                                             <tr align="center">
                                                                 <td align="right"> <asp:Button ID="Button1" runat="server" Text="Update" OnClick="Update" OnClientClick="Update" BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"/></td>
                                                                 <td> <asp:Button ID="Button2" runat="server" Text="Cancel" OnClick="Cancel" OnClientClick="Cancel" BackColor="White" BorderColor="#507CD1" BorderWidth="1px" BorderStyle="Solid" Font-Names="Arial Rounded MT Bold" Font-Size="Large" ForeColor="#284E98"/></td> 
                                                             </tr>
                                                         </table>
                                                        </td>   
                                                     </tr>
                                                </table>

                                             </ItemTemplate>  
</asp:FormView>     