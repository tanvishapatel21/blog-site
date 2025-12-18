<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   
       <!-- Hero Section - Home Page -->
    <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
               <h2 data-aos="fade-up" data-aos-delay="100">Login</h2><br />
          
         <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
        <asp:TextBox ID="username" runat="server"></asp:TextBox>
        <br /><br />
        <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
        <asp:TextBox ID="password" runat="server" TextMode="Password" ></asp:TextBox><br /><br />
       
              
        
        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click"></asp:Button>
            <asp:Button ID="Button2" runat="server" Text="clear" Font-Size="Medium" Font-Italic="False" OnClick="Button2_Click"></asp:Button>
        <br /><br />
             </div>
        <br /><br />
            <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red" Font-Italic="true" Font-Bold="true" Font-Size="XX-Large"></asp:Label>

               <p data-aos="fade-up" data-aos-delay="200">
            <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register.aspx">Create A New Account??</asp:LinkButton> <br /><br />
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/forgot1.aspx">Forgot Password!!</asp:LinkButton>
      
                </p>
   
         
     
            </div>
          </div>
        
        
     

    </section><!-- End Hero Section -->
        

       
       
        
</asp:Content>

