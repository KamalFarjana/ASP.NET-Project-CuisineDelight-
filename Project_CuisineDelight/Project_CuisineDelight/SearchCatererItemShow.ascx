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
                 <asp:LoginView ID="LoginView1" runat="server">
                <LoggedInTemplate>
                    <td>
                      <asp:Button ID="btnAddToCart" class="btn btn-primary btn-lg active" role="button" aria-pressed="true" runat="server" Text="Add to Cart" CommandArgument='<%# Eval("Item_ID") %>' OnClick="btnAddToCart_Click" />
                    
                    
                   
                </td>
                </LoggedInTemplate>

            </asp:LoginView>
                
            </tr>
        </table>
     </ItemTemplate>
</asp:DataList>