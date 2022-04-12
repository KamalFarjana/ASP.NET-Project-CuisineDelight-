<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="searchOrderControl.ascx.cs" Inherits="Project_CuisineDelight.searchOrderControl" %>

<asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="OrderID" DataSourceID="SqlDataSource1" EmptyDataText="There are no data records to display.">
    <Columns>
        <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" SortExpression="OrderID" />
        <asp:BoundField DataField="UserId" HeaderText="UserId" SortExpression="UserId" ReadOnly="True" />
        <asp:BoundField DataField="Order_Fulfilled_Date" HeaderText="Order_Fulfilled_Date" SortExpression="Order_Fulfilled_Date" ReadOnly="True" />
        <asp:BoundField DataField="Order_Status" HeaderText="Order_Status" SortExpression="Order_Status" ReadOnly="True" />
        <asp:BoundField DataField="OrderPlacedDate" HeaderText="OrderPlacedDate" SortExpression="OrderPlacedDate" ReadOnly="True" />
    </Columns>
</asp:GridView>
<asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ASP-PROJECT-CUISINE-DELIGHTConnectionString1 %>" DeleteCommand="DELETE FROM [Orders] WHERE [OrderID] = @OrderID" InsertCommand="INSERT INTO [Orders] ([UserId], [Order_Fulfilled_Date], [Order_Status], [OrderPlacedDate]) VALUES (@UserId, @Order_Fulfilled_Date, @Order_Status, @OrderPlacedDate)" SelectCommand="SELECT [OrderID], [UserId], [Order_Fulfilled_Date], [Order_Status], [OrderPlacedDate] FROM [Orders] where [UserId]=@UserId" UpdateCommand="UPDATE [Orders] SET [UserId] = @UserId, [Order_Fulfilled_Date] = @Order_Fulfilled_Date, [Order_Status] = @Order_Status, [OrderPlacedDate] = @OrderPlacedDate WHERE [OrderID] = @OrderID">
    <DeleteParameters>
        <asp:Parameter Name="OrderID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="UserId" Type="Object" />
        <asp:Parameter Name="Order_Fulfilled_Date" Type="DateTime" />
        <asp:Parameter Name="Order_Status" Type="String" />
        <asp:Parameter Name="OrderPlacedDate" Type="String" />
    </InsertParameters>
    <SelectParameters>
        <asp:QueryStringParameter Name="UserId" QueryStringField="userID" />
    </SelectParameters>
    <UpdateParameters>
        <asp:Parameter Name="UserId" Type="Object" />
        <asp:Parameter Name="Order_Fulfilled_Date" Type="DateTime" />
        <asp:Parameter Name="Order_Status" Type="String" />
        <asp:Parameter Name="OrderPlacedDate" Type="String" />
        <asp:Parameter Name="OrderID" Type="Int32" />
    </UpdateParameters>
</asp:SqlDataSource>
