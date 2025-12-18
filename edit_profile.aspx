<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="edit_profile.aspx.cs" Inherits="edit_profile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">Edit Profile 📝</h2>
            <p data-aos="fade-up" data-aos-delay="200">
         <table border="0">
            
       <tr>
           <td>
               <asp:Label ID="Label1" runat="server" Text="Firstname"></asp:Label>
               </td>
           <td>
                 <asp:TextBox ID="register_firstname" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ForeColor="red" ErrorMessage="!" ControlToValidate="register_firstname"></asp:RequiredFieldValidator>
               <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="only charecter" ValidationExpression="\D{1,50}" ControlToValidate="register_firstname" ForeColor="Red"></asp:RegularExpressionValidator>
   
           </td>
       </tr>
       
         <tr>
           <td>
               <asp:Label ID="Label2" runat="server" Text="Lastname"></asp:Label>

           </td>
             <td>
                  
        <asp:TextBox ID="register_lastname" runat="server"></asp:TextBox>
  <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ForeColor="red" ErrorMessage="!" ControlToValidate="register_lastname"></asp:RequiredFieldValidator>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="only character" ForeColor="Red" ControlToValidate="register_lastname" ValidationExpression="\D{1,50}"></asp:RegularExpressionValidator>

           </td>
       </tr>
             
         <tr>
           <td>
               <asp:Label ID="Label4" runat="server" Text="Contact No."></asp:Label>
           </td>
             <td>
                  <asp:TextBox ID="register_contact" runat="server"></asp:TextBox>
                    
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="!" ControlToValidate="register_contact" ForeColor="red"></asp:RequiredFieldValidator>
          <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Enter 10 digit" ValidationExpression="\d{10}"  ForeColor="red" Font-Italic="true" ControlToValidate="register_contact"></asp:RegularExpressionValidator>
             

           </td>
       </tr>
             
        <tr>
           <td>
                <asp:Label ID="Label5" runat="server" Text="City"></asp:Label>
           </td>
            <td>
                  <asp:TextBox ID="register_city" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="!" ControlToValidate="register_city" ForeColor="red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Only character" ControlToValidate="register_city" ForeColor="Red" ValidationExpression="\D{1,20}"></asp:RegularExpressionValidator>
           </td>
       </tr>        
       
       
       <tr>
           <td>
                <asp:Label ID="Label6" runat="server" Text="Address"></asp:Label>
           </td>
           <td>
                 <asp:TextBox ID="register_address" runat="server"></asp:TextBox>
               <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="!" ControlToValidate="register_address" ForeColor="red"></asp:RequiredFieldValidator>
          
           </td>
       </tr>
             
             
             
             
            
             
             
         
      <tr>
          <td>
              <asp:Label ID="Label8" runat="server" Text="Gender"></asp:Label>
          </td>
          <td>
             <asp:RadioButton ID="RadioButton1" runat="server" Text="Male" GroupName="Gender" />
         <asp:RadioButton ID="RadioButton2" runat="server"  Text="Female" GroupName="Gender"/>
          </td>
      </tr>
       
       

         
       
 <tr>
          <td>
                <asp:Label ID="Label9" runat="server" Text="Username"></asp:Label>
          </td>
          <td>
              <asp:TextBox ID="register_username" runat="server"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="!" ControlToValidate="register_username" ForeColor="red"></asp:RequiredFieldValidator>
              <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Only Character" ControlToValidate="register_username" ForeColor="Red" ValidationExpression="\D{1,30}"></asp:RegularExpressionValidator>
               
          </td>
      </tr>
       
         
 
        
        
 <tr>
          <td>
              <asp:Label ID="Label12" runat="server" Text="Security question"></asp:Label>
          </td>
          <td>
             

        <asp:Label ID="register_question" runat="server" Text=""></asp:Label>
          </td>
      </tr>
         
         
 <tr>
          <td>
               <asp:Label ID="Label13" runat="server" Text="Answer"></asp:Label>
          </td>
          <td>
               <asp:TextBox ID="register_answer" runat="server"></asp:TextBox>
                  <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="!" ControlToValidate="register_answer" ForeColor="red"></asp:RequiredFieldValidator>

          </td>
      </tr>
             <tr>
                 <td>
                     <asp:Label ID="Label14" runat="server" Text="Image"></asp:Label>
                 </td>
                 <td>
                       <asp:FileUpload ID="Image" runat="server"></asp:FileUpload>
                 </td>
             </tr>
       
          <tr>
              <td colspan="2" align="center">
                  
                  <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click" ></asp:Button>
              </td>
          </tr>
<tr>
              <td colspan="2" align="center">
                  
             <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/home.aspx">Back</asp:LinkButton>
       
                
              </td>
          </tr>
        
       </table>
             </p>
              </div>
            </div>
          </div>
         </section>
    
          
           
              <asp:Image ID="img1" runat="server" Height="200px" Width="200px" />
       
        
</asp:Content>

