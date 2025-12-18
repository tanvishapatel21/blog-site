<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="feedback.aspx.cs" Inherits="feedback" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">Feedback</h2>
            <p data-aos="fade-up" data-aos-delay="200">
   

       
       
      
        <br />
             
        <asp:TextBox ID="feedback1" runat="server" CssClass="form-control input-sm" width="340px" ></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="!!" ControlToValidate="feedback1"></asp:RequiredFieldValidator>
        <br /><br />
     
       

        
        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click" ></asp:Button>
        <br /><br />
          </p>
              </div>
            </div>
          </div>
         </section>
         
       
           
                
   
</asp:Content>

