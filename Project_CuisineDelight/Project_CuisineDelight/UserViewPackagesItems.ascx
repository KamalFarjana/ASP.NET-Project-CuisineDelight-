<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserViewPackagesItems.ascx.cs" Inherits="Project_CuisineDelight.UserViewPackagesItems" %>
<asp:DataList ID="SearchCatererItemList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" >
     <ItemTemplate>     
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "CatererFolder/ItemImage/"+Eval("Item_Image") %>' Width="200" Height="200" style="padding:0.4em" /> </td>
                
            </tr>
            <tr  align="center">
                <td><asp:Label ID="Label1" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label> </td>
             
            </tr>
             <tr  align="center">
                <td><asp:Label ID="Label2" runat="server" Text='<%# "Qty: "+ Eval("Quantity") %>'></asp:Label> </td>
             
            </tr>
            
        </table>
     </ItemTemplate>
</asp:DataList>