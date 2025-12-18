<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="blog.aspx.cs" Inherits="blog" %>

<script runat="server">

   
</script>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
    <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">
                 <%
            if(Request.QueryString["blog_id"]==null)
            {
                 %>Add Blog
                <%
                }else
                  {
                      %>
                Edit Blog
                <%
                  }
                   %>
            </h2>
            <p data-aos="fade-up" data-aos-delay="200">
       
     

     <table>
     <tr>
         <td>
               <asp:Label ID="Label1" runat="server" Text="Category"></asp:Label>
         </td>
         <td>
               <asp:DropDownList ID="addcategory" runat="server"  Width="500px"></asp:DropDownList>
         </td>
     </tr>
       <br />
      
        <tr>
            <td>
               <asp:Label ID="Label2" runat="server" Text="Blog name"></asp:Label>  
            </td>
            <td>
                 <asp:TextBox ID="blog_name" runat="server"  Width="500px"></asp:TextBox>
            </td>
        </tr>
       
    
         <tr>
             <td>
                      <asp:Label ID="Label4" runat="server" Text="About blog"></asp:Label>
             </td>
             <td>
  <asp:TextBox ID="about_blog" runat="server" Height="300px" Width="500px" TextMode="MultiLine" ></asp:TextBox>
       
             </td>
         </tr>  
            <tr>
                <td>
                     <asp:Label ID="Image1" runat="server" Text="Image"></asp:Label>
                </td>
                <td>
                    <asp:FileUpload ID="Image" runat="server"></asp:FileUpload>
                </td>
            </tr> 

      
          </table> 
        <%
            if(Request.QueryString["blog_id"]==null)
            {
                 %>
        <asp:Button ID="Button1" runat="server" Text="Submit" Font-Size="Medium" Font-Italic="False" OnClick="Button1_Click" ></asp:Button>
            <asp:Button ID="Button2" runat="server" Text="clear" Font-Size="Medium" Font-Italic="False" OnClick="Button2_Click" ></asp:Button>
        <br /><br />
                  <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/all_blog.aspx">Back</asp:LinkButton>
                <%
                }
                else
                {
               
                 %>
                <asp:Button ID="Button3" runat="server" Text="Edit" OnClick="Button3_Click" />
                <br /><br />
                  <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/your_blog.aspx">Back</asp:LinkButton>
                <%
                } %>
            
     
          
           
        </p>
                </div>
            </div>
          </div>
        </section>
    
            
            <asp:Image ID="img1" runat="server" height="200px"/>
</asp:Content>

