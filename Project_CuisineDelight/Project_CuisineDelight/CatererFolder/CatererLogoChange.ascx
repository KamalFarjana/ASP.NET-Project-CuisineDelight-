<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="CatererLogoChange.ascx.cs" Inherits="Project_CuisineDelight.CatererFolder.CatererLogoChange" %>
<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>      
            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# "~/CatererFolder/CatererProfileImage/"+Eval("Logo") %>' Width="250px" style="border-radius: 60% ;background-color:white" ForeColor="White" />     
    </ItemTemplate>

</asp:DataList>