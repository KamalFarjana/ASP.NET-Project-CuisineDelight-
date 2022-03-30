<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="FAQ.aspx.cs" Inherits="Project_CuisineDelight.FAQ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="Style/FAQ.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
    </div>
    <div class="container">              
        <div class="row">
                <div class="col">    
                      <div class="text-center">
                                <h1 id="heading"> FREQUENTLY ASKED QUESTION (FAQ) </h1>         
                      </div>
                 </div>
         </div> 
        <br />
         <div class="row" >
                <div class="col">    
                      <div class="FAQ" style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="FAQbutton" CommandArgument="1" runat="server" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign" runat="server" id="Qsicon"></span>  What CuisineDelight serves?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer1" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  It is an online collaborative catering service from where users can place an order with their friends and family as a team </p>
                      </div>
                 </div>
         </div> 
                <br />
         <div class="row" >
                <div class="col">    
                      <div  class="FAQ"  style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="LinkButton1" runat="server" CommandArgument="2" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign"></span>   How to place a team order?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer2" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  Create an account and then go to Team. Following this click on Create team then invite your team members</p>
                      </div>
                 </div>
         </div> 
         <br />
         <div class="row" >
                <div class="col">    
                      <div  class="FAQ"  style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="LinkButton2" runat="server" CommandArgument="3" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign"></span>  How can I recover my password?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer3" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  Go to Login, then click "forgot password". It will redirect you to enter your email address. 
                              A new password will be sent to your email address then you can log in to your account with the new password.</p>
                      </div>
                 </div>
         </div> 
           <br />
        <div class="row" >
                <div class="col">    
                      <div  class="FAQ"  style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="LinkButton3" runat="server" CommandArgument="4" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign"></span>   How can I find the packages listed by Caterer?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer4" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  Follow this path Home > Caterer > Package </p>
                      </div>
                 </div>
         </div> 
            <br />
        <div class="row" >
                <div class="col">    
                      <div  class="FAQ" " style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="LinkButton4" runat="server" CommandArgument="5" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign"></span>   Do I need to register for creating a team?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer5" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  Yes, you need to register as a user for creating a team </p>
                      </div>
                 </div>
         </div> 
        <br />
        <div class="row" >
                <div class="col">    
                      <div  class="FAQ" " style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="LinkButton5" runat="server" CommandArgument="6" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign"></span>  Where can I view the new team request?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer6" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  Login to your account and go to Team > View request. It shows all the new requests you have. </p>
                      </div>
                 </div>
         </div> 
        <br />
        <div class="row" >
                <div class="col">    
                      <div  class="FAQ" " style="background-color: #C0C0C0">                       
                          <asp:LinkButton ID="LinkButton6" runat="server" CommandArgument="7" OnClick="LinkButton_Click"><span class="glyphicon glyphicon-plus-sign"></span>  Where can I search for a team to join?</asp:LinkButton>                        
                      </div>
                     <div ID="FAQanswer7" runat="server" visible="false">
                          <p class="answer"><span class="glyphicon glyphicon-ok"></span>  Login to your account and go to Team > Join Team. If you know the name of a team then you can search for the respective team and give a join request. If the team leader accepts your request then you will be part of that team. </p>
                      </div>
                 </div>
         </div> 
    </div>
</asp:Content>
