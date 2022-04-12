<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserViewingtems.ascx.cs" Inherits="Project_CuisineDelight.UserViewingtems" %>
<asp:DataList ID="ViewAllItems" runat="server" RepeatColumns="2" RepeatDirection="Horizontal" >
     <ItemTemplate>

        
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "CatererFolder/ItemImage/"+Eval("Item_Image") %>' Width="300" Height="300" style="padding:0.4em" /> </td>
                
            </tr>
            <tr align="center" >
                <td >Caterer Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label> </td>
                
            </tr>
     
         
            <tr  align="center">
                <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                <td>
                    
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SearchCatererView.aspx?IDCAT="+Eval("UserId")+"&Name="+Eval("UserName")%>' Text='View'></asp:HyperLink>
                </td>
                 </LoggedInTemplate>

            </asp:LoginView>
            </tr>
        </table>
     </ItemTemplate>
</asp:DataList>