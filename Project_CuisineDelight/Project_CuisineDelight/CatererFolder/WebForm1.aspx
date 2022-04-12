<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
       
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Package_items_ID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
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
            <asp:DataList ID="gvShoppingCart" runat="server">
                <ItemTemplate>
                    <table style="width:100%;">
                        <tr>
                            <td><input id="Text1" type="text" /></td>
                            <td><asp:Button ID="Button1" runat="server" Text="Button" /></td>
                  
                        </tr>
                        
                    </table>
                </ItemTemplate>
            </asp:DataList>
        </div>
 

         <asp:GridView ID="GridView2"  AutoGenerateColumns="False" runat="server" OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" OnRowDeleting="gvShoppingCart_RowDeleting" OnRowEditing="gvShoppingCart_RowEditing" OnRowUpdating="gvShoppingCart_RowUpdating"  Width="1100px" CellPadding="4" ForeColor="#333333" GridLines="None">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="Name" HeaderText="Product Name" ReadOnly="True" />                       
                                <asp:BoundField DataField="PRICE" HeaderText="Price" ReadOnly="True" />
                                <asp:BoundField DataField="QUANTITY" HeaderText="Quantity" />
                                <asp:TemplateField HeaderText="Total">
                                    <ItemTemplate>
                                        <asp:Label ID="Label1" runat="server" Text='<%# Double.Parse(Eval("PRICE").ToString())*Int32.Parse(Eval("Quantity").ToString()) %>'></asp:Label>
                                    </ItemTemplate>
                                </asp:TemplateField>
                                <asp:CommandField ShowEditButton="True" />
                                <asp:CommandField ShowDeleteButton="True" />
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                            </asp:GridView>

    </form>
 

    </body>
</html>
