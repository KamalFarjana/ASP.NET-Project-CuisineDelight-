<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="UserProfileImage.ascx.cs" Inherits="Project_CuisineDelight.Customer.UserProfileImage" %>
<asp:DataList ID="DataList1" runat="server">
    <ItemTemplate>      
            <asp:Image ID="Image1" runat="server" Height="250px" ImageUrl='<%# "~/Customer/CustomerProfilePicture/"+Eval("UserImage") %>' Width="250px" style="border-radius: 60% ;background-color:white" ForeColor="White" />     
    </ItemTemplate>

</asp:DataList>