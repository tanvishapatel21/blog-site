<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="forgot1.aspx.cs" Inherits="forgot1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <!-- Hero Section - Home Page -->
    <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">

         <h2 data-aos="fade-up" data-aos-delay="100">Forgot Password</h2><br />
         <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="username1" runat="server"></asp:TextBox>
        <br /><br />
        

        
        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click"></asp:Button>
            <br /><br />   <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        <br /><br />
                <p data-aos="fade-up" data-aos-delay="200">
         
             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/login.aspx">Back</asp:LinkButton>
       </p>
              </div>
            </div>
          </div>
        </section>
      
</asp:Content>

