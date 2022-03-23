<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Project_CuisineDelight.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server"> 
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Style/Default.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
 
 <div class="container-fluid">
      <div class="row">
        <div class="col">    
            <div class="jumbotron" id="MainHeader">
                <h1 id="heading">Welcome to CuiseDelight</h1>
                <p id="paragraph1">
                    <em>We are happy to have you!</em> <br />
                    <em>Just one click and get your desire food</em> 
                </p>          
            </div>
        </div>
      </div>
     <div class="row">
          <div class="col-md-6">  
              <div class="text-center">
                     <asp:Image onclick="window.location='Caterer.aspx'" ID="Image1" runat="server" Height="400px" Width="500px" ImageUrl="https://cdn-icons-png.flaticon.com/512/1940/1940981.png" />                        
              </div>
              <div class="text-center">
                  <asp:Button ID="Button1" runat="server" Text="Select Your Caterer" BackColor="#CCCCFF" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" ForeColor="#990099" Height="50px" Width="173px" PostBackUrl="~/Caterer.aspx" />
              </div>     
          </div>

          <div class="col-md-6">  
               <div class="text-center">
                       <asp:Image onclick="window.location='Food.aspx'" ID="Image4" runat="server" Height="400px" Width="500px"  ImageUrl="https://i.pinimg.com/564x/dd/9d/c9/dd9dc9d83423bc037b511d73b29e6b80.jpg" />           
              </div>
               <div class="text-center">
                   <asp:Button ID="Button2" runat="server" Text="Select Your Food" BackColor="#CCCCFF" BorderColor="Black" BorderStyle="Solid" BorderWidth="5px" ForeColor="#990099" Height="50px" Width="173px" PostBackUrl="~/Food.aspx" />                      
               </div>   
          </div>       
      </div>
 </div>
</asp:Content>

