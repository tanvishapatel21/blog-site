<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="all_blog.aspx.cs" Inherits="all_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
       
   <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">Here you can see blog or content of the other user...!!</h2>
            <p data-aos="fade-up" data-aos-delay="200">please scroll down.....
                <br /><asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/blog.aspx">ADD NEW</asp:LinkButton>

                <br />
              <asp:LinkButton ID="LinkButton2" runat="server" PostBackUrl="~/your_blog.aspx">YOUR BLOG</asp:LinkButton>
              </p>
                </div>
            </div>
          </div>
       </section>




          

            
  
     
   
    
 <asp:SqlDataSource ID="sqldatasource1" runat="server" ConnectionString="<%$ConnectionStrings:con_str %>" SelectCommand="SELECT *FROM blog ORDER BY blog_id DESC" >

     
 </asp:SqlDataSource>
    
       
             <center>
                 <center>

         
   

            <div class="blog-page">

            
    <section id="blog" class="blog">

      

      
                   <asp:DataList ID="datalist1" runat="server" DataSourceID="sqldatasource1" DataKeyField="blog_id" >
        <ItemTemplate>
          
            <div class="container"  data-aos-delay="100" data-aos="fade-up">
              <div class="row gy-4 posts-list">

          <div class="col-xl-4 col-lg-6">
            
               <asp:Label ID="Label1" runat="server" Text='<%#Eval("blog_id")%>'>

               </asp:Label>
                    



              <div class="post-img">
                <asp:Image ID="image1" runat="server" ImageUrl='<%# Eval("blog_image") %>' CssClass="img-fluid" />
                    
              </div>

              <p class="post-category"> <asp:Label ID="category" runat="server" Text='<%#Eval("blog_category_id") %>'></asp:Label>
                       
                

              <h2 class="title">
                        <asp:Label ID="blog_name" runat="server" Text='<%#Eval("blog_name") %>' Height="100" Width="100" Font-Bold="True" style="align-content:center">

                        </asp:Label>
                        
              </h2>
                <p class="post-des">
                    <asp:Label runat="server" Text='<%#Eval("blog_about") %>'></asp:Label>
                </p>

            
              <div class="d-flex align-items-center">
                
            <%--    <img src="assets/img/blog/blog-author.jpg" alt="" class="img-fluid post-author-img flex-shrink-0">--%>
                  <asp:Image ID="image2" runat="server" ImageUrl='<%# Eval("user_image")%>' CssClass="img-fluid post-author-img flex-shrink-0" />
                    
                <div class="post-meta">
                  <p class="post-author"><asp:Label runat="server" Text='<%#Eval("blog_user_id") %>'></asp:Label></p>
                   
                   
                  <p class="post-date">
                  
                   <asp:Label runat="server" Text='<%#Eval("date") %>'></asp:Label><br />
                            
                  
                  </p>
                
                </div>
                   </div>
                  
             <a href="blog_detail.aspx?blog_id=<%#Eval("blog_id") %>"><img src="images/c10.gif" style="border-radius:70%" height="100px" width="150px" /></a>
                  
              </div>         
         </div>
            </div>
            <br /> 
            <br/>
            <br />             
              
                  </ItemTemplate>
                    
                   
    </asp:DataList>
              
         
          
           
         
        </section>
  
   </div>
                 </center>
                 </center>

               
    
    </asp:Content>      

