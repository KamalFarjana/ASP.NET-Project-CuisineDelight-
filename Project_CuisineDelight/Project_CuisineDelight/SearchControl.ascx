<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="SearchControl.ascx.cs" Inherits="Project_CuisineDelight.SearchControl" %>
      <h1> <asp:Label ID="NoSearchFoundMessage" runat="server"  ></asp:Label> </h1>
<asp:DataList ID="SearchDataList" runat="server" RepeatColumns="4" RepeatDirection="Horizontal" >
     <ItemTemplate>

        
        <table style="width: 100%;">
             <tr>
                <td>
                   <asp:Image ID="Image1" runat="server" ImageUrl='<%# "CatererFolder/CatererProfileImage/"+Eval("Logo") %>' Width="300" Height="300" style="padding:0.4em " /> </td>
                
            </tr>
            <tr align="center" >
                <td >Caterer Name:<asp:Label ID="Label1" runat="server" Text='<%# Eval("UserName") %>'></asp:Label> </td>
                
            </tr>
     
         
            <tr  align="center">
                <td>
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# "SearchCatererView.aspx?IDCAT="+Eval("UserId")+"&Name="+Eval("UserName")%>' Text='View'></asp:HyperLink>
                </td>
                
            </tr>
        </table>
     </ItemTemplate>
</asp:DataList>