<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditListedItem.ascx.cs" Inherits="Project_CuisineDelight.CatererFolder.EditListedItem1" %>

<asp:FormView ID="FormView1" runat="server">
     <ItemTemplate>
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <asp:Image ID="ItemImageDB" runat="server" ImageUrl='<%# "ItemImage/"+Eval("Item_Image") %>' Width="300" Height="300"  />       
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
                     <td><asp:TextBox ID="ItemName" runat="server" Width="400px" Text='<%# Eval("Item_Name") %>'></asp:TextBox>
                          </td>
                    <td > <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a name of the item" ControlToValidate="ItemName"></asp:RequiredFieldValidator></td>                
                </tr>               
                <tr >
                    <td  align="right"><asp:Label ID="Desciption" runat="server" Text=""> </asp:Label>Description: </td>   
                        <td><asp:TextBox ID="ItemDesciption" runat="server" Width="400px"   Text='<%# Eval("Item_Desc") %>'></asp:TextBox></td>
                  
                    <td></td>
                </tr>
                <tr>
                    <td  align="right"><asp:Label ID="Price" runat="server" Text=""></asp:Label>Price: </td>
                    <td><asp:TextBox ID="ItemPrice" runat="server" Width="400px" TextMode="Number" Text='<%# Eval("Item_Price") %>'></asp:TextBox>
                          </td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the price of the item"  ControlToValidate="ItemPrice"></asp:RequiredFieldValidator></td>                
                </tr>
                <tr >
                  <td></td>
                    <td align="center" >
                        <asp:Button ID="EditItemBtn" runat="server" Text="Submit" OnClick="EditItemBtn_Click" class="btn btn-secondary btn-lg"/>                      
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" OnClick="Cancel" class="btn btn-secondary btn-lg"/></td>
                       
                </tr>
            </table>
        </div>
      </div>
       </ItemTemplate>
</asp:FormView>
