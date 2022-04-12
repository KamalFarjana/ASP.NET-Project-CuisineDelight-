<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="CatererViewAllPackages.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.CatererViewAllPackages" %>

<%@ Register Src="~/CatererFolder/ListPackageOfCaterer.ascx" TagPrefix="uc1" TagName="ListPackageOfCaterer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <asp:LoginView ID="LoginView1" runat="server">
        <LoggedInTemplate>
            <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
            <div class="container py-4 container-fluid">
               
                 <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h2">Packages</h1>
                </div>
                <hr />
                 <div class="row">
                    <div class="col">
                         <asp:Button ID="Button3" runat="server" Text="Add Package"  PostBackUrl="~/CatererFolder/AddingPackage.aspx"/>
                        <uc1:ListPackageOfCaterer runat="server" ID="ListPackageOfCaterer" />
                         
                    </div>
                    
                    
                 </div>
                
            </div>
           
           
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
