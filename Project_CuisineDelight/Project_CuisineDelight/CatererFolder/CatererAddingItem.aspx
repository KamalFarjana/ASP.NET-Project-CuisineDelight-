<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="CatererAddingItem.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.CatererAddingItem_" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        height: 22px;
    }

</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
      
                <main class="flex-shrink-0">
        <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
        </div>
                
       <div class="container py-4 container-fluid">
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Add New Item</h1>
        </div>
           <hr />
        <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <img src="ItemImage/default-placeholder.png" class="card-img-top" alt="item" style="width: 350px; height: 300px" />        
            <asp:FileUpload ID="ItemImage" runat="server"/>
        </div>
        <div class="card col-xs-12 col-sm-6 col-md-8">
            <table style="width: 100%;">
                <tr>
                    <td></td>
                    <td>
                        <asp:Label ID="SuccessMsg" runat="server"  ></asp:Label></td>
                     <td></td>
                </tr>
                <tr >
                    <td align="right" ><asp:Label ID="Name" runat="server" Text=""></asp:Label>Name: </td>
                    <td ><asp:TextBox ID="ItemName" runat="server" Width="400px"></asp:TextBox></td>
                    <td > <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a name of the item" ControlToValidate="ItemName"></asp:RequiredFieldValidator></td>                
                </tr>               
                <tr >
                    <td  align="right"><asp:Label ID="Desciption" runat="server" Text=""> </asp:Label>Description: </td>
                    <td><asp:TextBox ID="ItemDesciption" runat="server" Width="400px"   ></asp:TextBox></td>
                    <td></td>
                </tr>
                 <tr >
                    <td  align="right"><asp:Label ID="ItemType" runat="server" Text=""> </asp:Label>Item Type: </td>
                    <td>
                        <asp:DropDownList ID="ItemDropDownList" runat="server">
                            <asp:ListItem Text="Select Type" Value="0" />
                            <asp:ListItem Text="Halal" Value="1" />
                            <asp:ListItem Text="Fast Food" Value="2" />
                            <asp:ListItem Text="Bangladeshi" Value="3" />
                            <asp:ListItem Text="Indian" Value="4" />
                            <asp:ListItem Text="Asian" Value="5" />
                            <asp:ListItem Text="Pizza" Value="6" />
                            <asp:ListItem Text="Burger" Value="7" />
                            <asp:ListItem Text="Juice" Value="8" />
                            <asp:ListItem Text="Breakfast & brunch" Value="9" />
                            <asp:ListItem Text="South Indian" Value="10" />
                            <asp:ListItem Text="Indian Curry" Value="11" />
                            <asp:ListItem Text="Salad" Value="12" />
                            <asp:ListItem Text="Dessert" Value="13" />
                            <asp:ListItem Text="Vegeterian" Value="14" />
                            <asp:ListItem Text="Vegan" Value="15" />
                            <asp:ListItem Text="Bakery" Value="16" />
                            <asp:ListItem Text="Japanese" Value="17" />
                             <asp:ListItem Text="Others" Value="18" />
                        </asp:DropDownList></td>
                    <td><asp:RequiredFieldValidator ID="ItemTypeValidator" runat="server" ErrorMessage="Select type of your item"  ControlToValidate="ItemDropDownList"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td  align="right"><asp:Label ID="Price" runat="server" Text=""></asp:Label>Price: </td>
                    <td><asp:TextBox ID="ItemPrice" runat="server" Width="400px" TextMode="Number"></asp:TextBox></td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter the price of the item"  ControlToValidate="ItemPrice"></asp:RequiredFieldValidator></td>                
                </tr>
                <tr >
                    <td></td>
                    <td align="center" >
                        <asp:Button ID="AddItemBtn" runat="server" Text="Submit" OnClick="AddItemBtn_Click" class="btn btn-secondary btn-lg"/>
                    </td>
                    <td></td>
                </tr>
            </table>
        </div>
      </div>

      </div>
      </main>
       
        </LoggedInTemplate>
    </asp:LoginView>
   

</asp:Content>
