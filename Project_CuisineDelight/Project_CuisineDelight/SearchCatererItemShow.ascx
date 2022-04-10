<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchCatererItemShow.ascx.cs" Inherits="Project_CuisineDelight.SearchCatererItemShow" %>
<asp:DataList ID="SearchCatererItemList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" >
     <ItemTemplate>     
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "CatererFolder/ItemImage/"+Eval("Item_Image") %>' Width="300" Height="300" style="padding:0.4em" /> </td>
                
            </tr>
            <tr  align="center">
                <td>Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Item_Name") %>'></asp:Label> </td>
                
            </tr>
     
            <tr  align="center">
                <td>Price: <asp:Label ID="Label3" runat="server" Text='<%# "$ "+ Eval("Item_Price") %>'></asp:Label></td>
                
            </tr>
            <tr  align="center">
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Quantity"></asp:Label>
                    <asp:TextBox ID="ItemQuantity" runat="server" Width="70px" TextMode="Number" Text="0"></asp:TextBox>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ShoppingCart.aspx?IDCAT="+Eval("Item_ID") %>' Text='Add to Cart'></asp:HyperLink>
                    &nbsp&nbsp
                   
                </td>
                
            </tr>
        </table>
     </ItemTemplate>
</asp:DataList>