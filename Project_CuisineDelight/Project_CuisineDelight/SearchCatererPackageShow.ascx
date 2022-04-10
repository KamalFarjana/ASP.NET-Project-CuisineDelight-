<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchCatererPackageShow.ascx.cs" Inherits="Project_CuisineDelight.SearchCatererPackageShow" %>
<asp:DataList ID="SearchCaterePackages" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" CellPadding="5" CellSpacing="5" HorizontalAlign="Justify" Width="743px">
    <ItemStyle HorizontalAlign="Center" BackColor="White" Wrap="False" />
    <ItemTemplate>
        
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "CatererFolder/PackageImage/"+Eval("Package_Image") %>' Width="300" Height="300" style="padding:0.4em" /> </td>
                
            </tr>
            <tr align="center" >
                <td >Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Package_Name") %>'></asp:Label> </td>
                
            </tr>
     
         
             <tr  align="center">
                <td>Price: <asp:Label ID="Label2" runat="server" Text='<%# "$ "+ Eval("Package_Price") %>'></asp:Label></td>               
            </tr>
             <tr  align="center">
                 <td>
                      <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "UserViewPackages.aspx?IDPakcageCAT="+Eval("Package_ID")+"&IDCAT="+Eval("UserId") %>' Text='View'></asp:HyperLink>             
           
                 </td>
              </tr>  
            <tr  align="center">
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Quantity"></asp:Label>
                    <asp:TextBox ID="ItemQuantity" runat="server" Width="70px" TextMode="Number" Text="0"></asp:TextBox>
                    <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl='<%# "ShoppingCart.aspx?IDPakcageCAT="+Eval("Package_ID") %>' Text='Add to Cart'></asp:HyperLink>
                    &nbsp&nbsp
                   
                </td>
            </tr>
        </table>
        <br />
    </ItemTemplate>
    

</asp:DataList>