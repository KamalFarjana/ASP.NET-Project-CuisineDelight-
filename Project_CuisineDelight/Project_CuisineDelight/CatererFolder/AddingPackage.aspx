<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="AddingPackage.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.AddingPackage" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
                  <h1 class="h2">Add New Package</h1>
                </div>
                   <hr />
                <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-4">
                  <img src="ItemImage/default-placeholder.png" class="card-img-top" alt="item" style="width: 350px; height: 300px" />        
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
                            <td ><asp:TextBox ID="PackageName" runat="server" Width="440px"></asp:TextBox></td>
                            <td > <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a name of the Package" ControlToValidate="PackageName"></asp:RequiredFieldValidator></td>                
                        </tr>               
                        <tr >
                            <td  align="right"><asp:Label ID="Desciption" runat="server" Text=""> </asp:Label>Description: </td>
                            <td><asp:TextBox ID="PackageDesciption" runat="server" Width="440px"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        
                        <tr>
                            <td  align="right"><asp:Label ID="Price" runat="server" ></asp:Label>Discount: </td>
                            <td><asp:TextBox ID="PackageDiscount" runat="server" Width="440px" TextMode="Number"></asp:TextBox></td>
                            <td></td>
                        </tr>
                        
                        <tr >
                            <td></td>
                            <td>
                                <asp:Button ID="AddItemBtn" runat="server" Text="Submit" OnClick="AddPackageBtn_Click" class="btn btn-secondary btn-lg"/>
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
