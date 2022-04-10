<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="SearchCatererView.aspx.cs" Inherits="Project_CuisineDelight.SearchCatererView" %>

<%@ Register Src="~/SearchCatererItemShow.ascx" TagPrefix="uc1" TagName="SearchCatererItemShow" %>
<%@ Register Src="~/SearchCatererPackageShow.ascx" TagPrefix="uc1" TagName="SearchCatererPackageShow" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
            </div>
            <div class="container py-4 container-fluid">
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h1 class="h1">
                          Caterer Name: <asp:Label ID="CatererName" runat="server" Text="Label"></asp:Label></h1>
                </div>
                 <hr />
                <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h3 class="h3">Items</h3>
                </div>
                <hr />
                <div class="row">
                    <div class="col">
                        <uc1:SearchCatererItemShow runat="server" id="SearchCatererItemShow" />
                    </div>
                    
                    
                 </div>
                <hr />
                 <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
                    <h3 class="h3">Packages</h3>
                </div>
                <hr />
                 <div class="row">
                    <div class="col">
                        <uc1:SearchCatererPackageShow runat="server" id="SearchCatererPackageShow" />
                         
                    </div>
                    
                    
                 </div>
                
            </div>
</asp:Content>
