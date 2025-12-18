<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="changepass.aspx.cs" Inherits="changepass" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">Change Password</h2>
            <p data-aos="fade-up" data-aos-delay="200">
   
       <table border="0">
           <br />
        
      
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="Old password"></asp:Label>
           </td>
           <td>
                <asp:TextBox ID="oldpwd" runat="server" TextMode="Password"></asp:TextBox><br /><br />
           </td>
       </tr>
       
       <tr>
           <td>
                <asp:Label ID="Label2" runat="server" Text="New Password"></asp:Label>
           </td>
           <td>
                <asp:TextBox ID="newpwd" runat="server" TextMode="Password" ></asp:TextBox><br /><br />
               <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="!!" ControlToValidate="newpwd" ControlToCompare="cpwd"></asp:CompareValidator>
           </td>
       </tr>

           <tr>
               <td>
                   <asp:Label ID="Label4" runat="server" Text="Confirm Password"></asp:Label>
               </td>
               <td>
                  <asp:TextBox ID="cpwd" runat="server" TextMode="Password"></asp:TextBox>
               </td>
           </tr>
         <tr>
               <td>
                   <asp:Label ID="Label3" runat="server" Text="" ForeColor="Red"></asp:Label>
               </td>
           </tr>
     
       <tr>
           <td colspan="2" align="center">
                <br /><br />
             <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click"></asp:Button>
           </td>
       </tr>
         
       
           <tr>
               <td colspan="2" align="center">
                   <br /><br />
                   <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/home.aspx">Back</asp:LinkButton>
               </td>
           </tr>
        
              
      
            </table>
                </p>
              </div>
            </div>
          </div>
      </section>

            
        <br /><br />
            

           
           
          
     
</asp:Content>

