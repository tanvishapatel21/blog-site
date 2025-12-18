<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="forgot2.aspx.cs" Inherits="forgot2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
                 <h2 data-aos="fade-up" data-aos-delay="100">Forgot Password</h2><br />
       <table border="0" height="100px" width="400px">
          
      
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="Security Question"></asp:Label>
           </td>
           <td>
               <asp:Label ID="question" runat="server" Text="Label"></asp:Label>
           </td>
       </tr>
       
       <tr>
           <td>
                <asp:Label ID="Label2" runat="server" Text="Answer"></asp:Label>
           </td>
           <td>
                <asp:TextBox ID="answer" runat="server"></asp:TextBox><br /><br />
           </td>
       </tr>
       
      
       <tr>
           <td colspan="2" align="center">
             <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click"></asp:Button>
           </td>
       </tr>
       

        
        
      
            </table>
              <br /><br /><asp:Label ID="Label4" runat="server" Text=""></asp:Label>
            
          

             <p data-aos="fade-up" data-aos-delay="200">
           
                <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/forgot1.aspx">Back</asp:LinkButton>
    </p>
                
    </div>
          </div>
        </div>
        </section>
        
</asp:Content>

