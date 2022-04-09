<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="EditPackageByCaterer.aspx.cs" Inherits="Project_CuisineDelight.CatererFolder.EditPackageByCaterer" %>

<%@ Register Src="~/CatererFolder/EditPackageByCaterer.ascx" TagPrefix="uc1" TagName="EditPackageByCaterer" %>

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
                    <h1 class="h2">Edit Package</h1>
                </div>
                <hr />
                <uc1:EditPackageByCaterer runat="server" id="EditPackageByCaterer" />

            </div>
            
        </LoggedInTemplate>
    </asp:LoginView>
</asp:Content>
