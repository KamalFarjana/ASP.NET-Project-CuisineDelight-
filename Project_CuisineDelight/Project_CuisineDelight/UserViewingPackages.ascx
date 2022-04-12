<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserViewingPackages.ascx.cs" Inherits="Project_CuisineDelight.UserViewingPackages" %>
<%@ Register Src="~/UserViewPackagesItems.ascx" TagPrefix="uc1" TagName="UserViewPackagesItems" %>


<asp:FormView ID="FormView1" runat="server">
     <ItemTemplate>
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <asp:Image ID="PackageImageDB" runat="server" ImageUrl='<%# "CatererFolder/PackageImage/"+Eval("Package_Image") %>' Width="300" Height="300"  />       
           <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "ShoppingCart.aspx?IDCAT="+Eval("Package_ID") %>' Text='Add to Cart'></asp:HyperLink>
                  
        </div>
         <div class="col-xs-12 col-sm-6 col-md-1">
               
            
        </div>
        <div class="card col-xs-12 col-sm-6 col-md-7">
            <table style="width: 100%;">
               
                <tr >
                    <td align="right" ><asp:Label ID="Name" runat="server" Text=""></asp:Label>Name: </td>
                     <td><asp:TextBox ID="PackageName" runat="server" Width="400px" Text='<%# Eval("Package_Name") %>' Enabled="false"></asp:TextBox>
                          </td>
                  
                </tr>               
                <tr >
                    <td  align="right"><asp:Label ID="Desciption" runat="server" Text=""> </asp:Label>Description: </td>   
                        <td><asp:TextBox ID="PackageDesciption" runat="server" Width="400px"   Text='<%# Eval("Package_Desc") %>' Enabled="false"></asp:TextBox></td>
                  
                    
                </tr>
                <tr>
                    <td  align="right"><asp:Label ID="Discount" runat="server" Text=""></asp:Label>Discount: </td>
                    <td><asp:TextBox ID="PackageDiscount" runat="server" Width="400px"  Text='<%# Eval("Package_Discount")+"%" %>' Enabled="false">%</asp:TextBox> </td>
                         
                                 
                </tr>
                 <tr>
                     <td  align="right"><asp:Label ID="TotalPackagePrice" runat="server" Text=""> </asp:Label>Price: </td>
                    <td > <asp:TextBox ID="PackagePrice"  runat="server" Width="400px" Text='<%# "$ "+ Eval("Package_Price") %>' Enabled="false"></asp:TextBox> </td>
                   
                </tr>
                <tr>
                     <td  align="right"><asp:Label ID="Label1" runat="server" Text=""> </asp:Label> </td>
                    <td >
                        <uc1:UserViewPackagesItems runat="server" ID="UserViewPackagesItems" />
                    </td>
                   
                </tr>
               
            </table>
        </div>
      </div>
       </ItemTemplate>
</asp:FormView>