<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="Project_CuisineDelight.ShoppingCart" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
              <main class="flex-shrink-0">
                  <div class="container py-4 container-fluid">
                         <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                            <h1 class="h2">Your Shopping Cart</h1>
                         </div>
                          <hr />
                      <div class="center">
                         <asp:GridView ID="gvShoppingCart"  AutoGenerateColumns="False" runat="server" OnRowCancelingEdit="gvShoppingCart_RowCancelingEdit" OnRowDeleting="gvShoppingCart_RowDeleting" OnRowEditing="gvShoppingCart_RowEditing" OnRowUpdating="gvShoppingCart_RowUpdating"  Width="1100px" CellPadding="4" ForeColor="#333333" GridLines="None">
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
                        <asp:Label ID="lblGrandTotal" runat="server" Text="Label" Visible="false"></asp:Label>
                        <hr />
                          <asp:Button class="btn btn-primary btn-lg active" ID="Button1" runat="server" Text="Place Order" onclick="PlaceOrder"/>
                         
                      </div>
                      <asp:Label ID="SuccessMsg" runat="server" Text="Label" Visible="false"></asp:Label>
                  </div>
             </main>
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
