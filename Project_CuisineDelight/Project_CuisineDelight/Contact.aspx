<%@ Page Title="" Language="C#" MasterPageFile="~/Master/FrontEnd.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="Project_CuisineDelight.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-top:50px">
             <asp:SiteMapPath ID="SiteMapPath1" runat="server"></asp:SiteMapPath>
    </div>
    <div class="container">
        <h1>Contact Us</h1>
        <p>We would love to hear from you. Get in touch with us!</p>
        <hr />
        <div class="row">
          <form class="form-horizontal">
          <fieldset>
    
            <!-- Name input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="name">Name</label>
              <div class="col-md-9">
                  <asp:TextBox ID="TextBox1" runat="server" Width="850px"></asp:TextBox>
              </div>
            </div>
            <br /><br />
            <!-- Email input-->
            <div class="form-group">
              <label class="col-md-3 control-label" for="email">Your E-mail</label>
              <div class="col-md-9">
                  <asp:TextBox ID="TextBox2" runat="server" Width="850px"></asp:TextBox>
              </div>
            </div>
            <br /><br />
            <!-- Message body -->
            <div class="form-group">
              <label class="col-md-3 control-label" for="message">Your message</label>
              <div class="col-md-9">
                  <asp:TextBox ID="TextBox3" runat="server" Height="100px" Width="850px"></asp:TextBox>
              </div>
            </div>
            <br /><br /><br /><br /><br /><br />
            <!-- Form actions -->
            <div class="form-group">
                <div class="col-md-10 text-left">
                   <asp:Label ID="Label1" runat="server" ForeColor="#009933"></asp:Label>
                </div>
                <div class="col-md-2 text-right">
                  <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                </div>
            </div>
          </fieldset>
          </form>
        </div>
    </div>
</asp:Content>
