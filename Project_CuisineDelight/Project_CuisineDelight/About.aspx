<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Project_CuisineDelight.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
                    <div class="row">
                        <div class="col">    
                            <div class="text-center">
                                <h1 id="heading"> ABOUT US </h1>         
                            </div>
                        </div>
                    </div>
                    <br />     
                    <div class="row">
                   
                        <div class="col-md-6">  
                           
                               <p style="font-family: 'Arial Rounded MT Bold'; font-size:large; text-align: justify; Height: 300px; Width:600px ;padding-right:2em">CuisineDelight offers the chance to view all of Thunder Bay's local caterers' specialty dishes.
                                Come in and treat yourself with our scrumptious variety of cuisines and snacks.
                                Whether it's your first or last meal of the day, we're ready to serve you with a wide range of options. </p>                    
                            
                      </div> 
                       
                      <div class="col-md-6">  
                          
                                 <asp:Image ID="Image1" runat="server" ImageUrl="https://static.toiimg.com/photo/84895387.cms"  Height="300px" Width="600px" ImageAlign="left" />                        
                           
                      </div>
                
                    
                      
                    </div>
                  <br />
                  <br />
                  <div class="row">
                       <div class="col-md-6">  
                          <div>
                                 <asp:Image ID="Image2" runat="server" ImageUrl="https://thumbs.dreamstime.com/b/chef-hotel-restaurant-kitchen-cooking-hands-prepared-beef-steak-vegetable-decoration-81415061.jpg" Height="300px" Width="600px" />                        
                          </div>
                       </div>
            
                      <div class="col-md-6">  
                           <div>
                               <p style="font-family: 'Arial Rounded MT Bold'; font-size:large; text-align: justify; Height: 300px; Width:600px ; padding-left:2em">
                                   We're putting all of the special caterers in Thunder Bay area within one click's reach.
                                Our exclusive caterer has a variety of culinary items to offer you, but wait, there's more: they also have a variety of packages to offer you.
                                Woohoo!! 
                               </p>                    
                           </div>   
                      </div>  
           
                  </div>
                    <br />
                       <br />
                  <div class="row">
                      <div class="col-md-6">  
                           <div>
                               <p style="font-family: 'Arial Rounded MT Bold'; font-size:large; text-align: justify; Height: 300px; Width:600px; padding-right:2em">Ordering for a group of people? No worries....We are here to help you out.
                                   Just create a team with your friends and select your caterer. And take a nap......Rest we are going to handle...ENJOY </p>                    
                           </div>   
                      </div> 
                      <div class="col-md-6">  
                          <div>
                                 <asp:Image ID="Image3" runat="server" ImageUrl="https://images.squarespace-cdn.com/content/v1/5c64acf1b7c92cf444981411/1550214173527-5VY2FBQZH9Q6Y54619EN/image-asset.jpeg?format=2500w " Height="300px" Width="600px"  />                        
                          </div>   
                      </div>
                
                  </div>
      
                   <br /> 
  </div>
      
</asp:Content>
