<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="LoginSelectionAsCatereorCustomer.aspx.cs" Inherits="Project_CuisineDelight.LoginSelectionAsCatereorCustomer" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <main class="flex-shrink-0">
          <div>
                <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
          </div>
                
          <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="text-center">
                             <h1 class="h2">Login as Customer or Caterer?</h1>
                        </div>
                          <hr />
                    </div>
                
                </div>
               
                
                <div class="row">
                    <div class="col">
                         <div class="text-center">
                             <div class="text-center">
                                 <asp:RadioButtonList ID="AsCustomerOrCaterer" runat="server" RepeatLayout="Flow">
                                        <asp:ListItem Value="1">Customer</asp:ListItem>
                                        <asp:ListItem Value="2">Caterer</asp:ListItem>
                                 </asp:RadioButtonList>
                             </div>
                            
                             <div>
                                  <asp:Label ID="ErrorMsg" runat="server"  ></asp:Label>
                             </div>
                             <div>
                                  <asp:Button ID="Button1"  class="btn btn-secondary btn-lg" runat="server" Text="Go fo Login" OnClick="Button1_Click" />
                             </div>               
                        </div>
                         
                </div>   
                </div>
          </div>
      </main>
   
</asp:Content>
