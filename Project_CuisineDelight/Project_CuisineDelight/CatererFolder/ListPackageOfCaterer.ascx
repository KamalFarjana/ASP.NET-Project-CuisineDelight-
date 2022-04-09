<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListPackageOfCaterer.ascx.cs" Inherits="Project_CuisineDelight.CatererFolder.ListPackageOfCaterer" %>
<asp:DataList ID="DataListItem" runat="server" RepeatDirection="Horizontal" RepeatColumns="4" CellPadding="5" CellSpacing="5" HorizontalAlign="Justify" Width="743px">
    <ItemStyle HorizontalAlign="Center" BackColor="White" Wrap="False" />
    <ItemTemplate>
        
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "PackageImage/"+Eval("Package_Image") %>' Width="300" Height="300" style="padding:0.4em" /> </td>
                
            </tr>
            <tr align="center" >
                <td >Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("Package_Name") %>'></asp:Label> </td>
                
            </tr>
     
         
             <tr  align="center">
                <td>Price: <asp:Label ID="Label2" runat="server" Text='<%# Eval("Package_Price") %>'></asp:Label></td>               
            </tr>
            <tr  align="center">
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "EditPackageByCaterer.aspx?IDCAT="+Eval("Package_ID") %>' Text='Edit'></asp:HyperLink>
                    &nbsp&nbsp
                    <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl='<%# "DeletePackage.aspx?IDCAT="+Eval("Package_ID") %>' Text='Delete'></asp:HyperLink>
                </td>
                
            </tr>
        </table>
        <br />
    </ItemTemplate>
    

</asp:DataList>