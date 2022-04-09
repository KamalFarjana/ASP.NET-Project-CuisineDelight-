<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="EditPackageByCaterer.ascx.cs" Inherits="Project_CuisineDelight.CatererFolder.EditPackageByCaterer1" %>

<asp:FormView ID="FormView1" runat="server">
     <ItemTemplate>
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-4">
          <asp:Image ID="PackageImageDB" runat="server" ImageUrl='<%# "PackageImage/"+Eval("Package_Image") %>' Width="300" Height="300"  />       
            <asp:FileUpload ID="PackageImage" runat="server"/>
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
                     <td><asp:TextBox ID="PackageName" runat="server" Width="400px" Text='<%# Eval("Package_Name") %>'></asp:TextBox>
                          </td>
                    <td > <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter a name of the item" ControlToValidate="PackageName"></asp:RequiredFieldValidator></td>                
                </tr>               
                <tr >
                    <td  align="right"><asp:Label ID="Desciption" runat="server" Text=""> </asp:Label>Description: </td>   
                        <td><asp:TextBox ID="PackageDesciption" runat="server" Width="400px"   Text='<%# Eval("Package_Desc") %>'></asp:TextBox></td>
                  
                    <td></td>
                </tr>
                <tr>
                    <td  align="right"><asp:Label ID="Discount" runat="server" Text=""></asp:Label>Discount: </td>
                    <td><asp:TextBox ID="PackageDiscount" runat="server" Width="400px" TextMode="Number" Text='<%# Eval("Package_Discount") %>'></asp:TextBox>
                          </td>
                    <td><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter the price of the item"  ControlToValidate="PackageDiscount"></asp:RequiredFieldValidator></td>                
                </tr>
                 <tr>
                     <td  align="right"><asp:Label ID="TotalPackagePrice" runat="server" Text=""> </asp:Label>Price: </td>
                    <td >
                     <asp:TextBox ID="PackagePrice"  runat="server" Width="400px" Text='<%# Eval("Package_Price") %>' Enabled="false"></asp:TextBox>
                    </td>
                   
                </tr>
              
                <tr >
                <td  align="right"><asp:Label ID="Label2" runat="server" Text=""> </asp:Label>Items: </td>
                <td>
                <asp:GridView ID="GridView1" runat="server" Width="400px" AutoGenerateColumns="False" DataKeyNames="Package_items_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                    <asp:BoundField DataField="Package_items_ID" HeaderText="Package_items_ID" ReadOnly="True" SortExpression="Package_items_ID" InsertVisible="False" Visible="False" />
                    <asp:BoundField DataField="Item_Name" HeaderText="Item_Name" SortExpression="Item_Name" ReadOnly="True" />
                    <asp:BoundField DataField="Quantity" HeaderText="Quantity" SortExpression="Quantity" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DefaultConnection %>" DeleteCommand="DELETE FROM [PackageItems] WHERE [Package_items_ID] = @Package_items_ID" InsertCommand="INSERT INTO [PackageItems] ([Quantity]) VALUES (@Quantity)" SelectCommand="SELECT [Package_items_ID], [Item_Name], [Quantity] FROM [PackageItems] where [Package_ID]=@Package_ID" UpdateCommand="UPDATE [PackageItems] SET [Quantity] = @Quantity WHERE [Package_items_ID] = @Package_items_ID">
                <DeleteParameters>
                    <asp:Parameter Name="Package_items_ID" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="Quantity" Type="Int32" />
                </InsertParameters>
                <SelectParameters>
                    <asp:QueryStringParameter Name="Package_ID" QueryStringField="IDCAT" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="Quantity" Type="Int32" />
                    <asp:Parameter Name="Package_items_ID" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
               </td>
                        
               </tr>
                  <tr >
                            <td  align="right"><asp:Label ID="Label1" runat="server" Text=""> </asp:Label>Add Item: </td>
                            <td colspan="2">                            
                             <asp:DropDownList ID="DropDownListItem" runat="server">
                             </asp:DropDownList>

                            <asp:TextBox ID="ItemQuantity" runat="server" Width="150px" TextMode="Number" Text="0"></asp:TextBox>
                            <asp:Button ID="AddItem" runat="server" Text="Add Item" onclick="AddItemsToPackageBtn"/>
                            </td>
                            <td>                      
                               <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please select the quantity" ControlToValidate="ItemQuantity"></asp:RequiredFieldValidator></td>                          
                </tr>
               
               <tr>
                  <td></td>
                    <td align="center" >
                        <asp:Button ID="EditItemBtn" runat="server" Text="Submit"  class="btn btn-secondary btn-lg" OnClick="EditPackageBtn_Click"/>                      
                    <asp:Button ID="Cancel" runat="server" Text="Cancel" class="btn btn-secondary btn-lg" Onclick="Cancel"/></td>
                       
                </tr>
            </table>
        </div>
      </div>
       </ItemTemplate>
</asp:FormView>