<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="forgot3.aspx.cs" Inherits="forgot3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
                 <h2 data-aos="fade-up" data-aos-delay="100">Forgot Password</h2><br />
       <table border="0" width="400px" height="198px">

      
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="New Password"></asp:Label>
           </td>
           <td>
                <asp:TextBox ID="newpassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
           </td>
       </tr>
       
       <tr>
           <td>
                <asp:Label ID="Label2" runat="server" Text="Confirm password"></asp:Label>
           </td>
           <td>
                <asp:TextBox ID="cpassword" runat="server" TextMode="Password"></asp:TextBox><br /><br />
           </td>
       </tr>
       
      
       <tr>
           <td colspan="2" align="center">
             <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click"></asp:Button>
           </td>
       </tr>
       

        
        
      
            </table>
              <br /><br /><asp:Label ID="Label4" runat="server" Text=""></asp:Label>
             </div>
      
        
                
   </div>
          </div>
    </section>
</asp:Content>

