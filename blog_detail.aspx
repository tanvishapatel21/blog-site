<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="~/blog_detail.aspx.cs" Inherits="blog_detail" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
  
 <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">Here you can see blog or content of the other user...!!</h2>
            <p data-aos="fade-up" data-aos-delay="200">comment blog
</p>

            </div>
            </div>
          </div>
       </section>
            
    <center>
<br /><br /><br />
        <table border="0" height="300px" width="70%" align="center">

       <tr>
           <td>
 <asp:Label ID="Label_image" runat="server" Text="Image" Font-Bold="True"></asp:Label>
     
           </td>
           <td>
   <asp:Image ID="Image1" runat="server" Height="200px" Width="250px"></asp:Image>
           </td>
       </tr>
               <tr>
        <td><br />
 <asp:Label ID="Label3" runat="server" Text="Title" Font-Bold="True"></asp:Label>
        </td>
        <td><br />
             <asp:Label ID="blog_name" runat="server" Text="Label"></asp:Label>
        </td>
    </tr>
   
      <tr>
          <td><br />
<asp:Label ID="Label1" runat="server" Text="category" Font-Bold="True"></asp:Label>
          </td>
          <td><br />
  <asp:Label ID="cate" runat="server" Text=""></asp:Label>
          </td>
      </tr>
        
     <tr>
         <td><br />
             <asp:Label ID="Label4" runat="server" Text="Description" Font-Bold="true"></asp:Label>
         </td>
         <td><br />
<asp:Label ID="des" runat="server" Text=""></asp:Label>
             </td>
     </tr>
            <tr>
                <td><br />
   <asp:Label ID="Label2" runat="server" Text="Posted BY...." Font-Bold="true"></asp:Label>
                </td>
                <td><br />
                    <asp:Image ID="Image2" runat="server" Height="50px" Width="50px" style="border-radius:50%" ></asp:Image>
                 <asp:Label ID="user" runat="server" Text=""></asp:Label>

                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Comment" Font-Bold="true" ></asp:Label>
                </td>
                <td>
                    <br />
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control input-sm" ></asp:TextBox><br />
                    <asp:Button ID="ok" runat="server" Text="OK" OnClick="ok_Click"></asp:Button><br />
                             <a href="all_blog.aspx"><img src="images/back.jpg" height="50px" width="100px" /></a> 

                </td>
            </tr>
            </table>
        <table border="1" >

      
                       
 <asp:SqlDataSource ID="sqldatasource1" runat="server" ConnectionString="<%$ConnectionStrings:con_str %>" SelectCommand="SELECT *FROM comment where post_id=@blog_id ORDER BY comment_id DESC" >
     <SelectParameters>
         <asp:QueryStringParameter  QueryStringField="blog_id" Name="blog_id" Type="Int32"/>
     </SelectParameters>
     
 </asp:SqlDataSource>
                    
                   <asp:DataList ID="datalist1" runat="server" DataSourceID="sqldatasource1" DataKeyField="comment_id" >
        <ItemTemplate>
            <tr>
                <td>
                    
                                 <asp:Label ID="Label7" runat="server" Text='<%#Eval("comment_username") %>'>

                        </asp:Label>
                </td>
                <td>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="....:-"></asp:Label>
                    </td>
                </td>
                
                <td>
                                 <asp:Label ID="coment_des" runat="server" Text='<%#Eval("comment_des") %>'>

                        </asp:Label>
                </td>
               
            </tr>
            

          </ItemTemplate>
                       </asp:DataList>
            </table>
          <asp:LinkButton ID="hide" runat="server" OnClick="hide_Click">Hide Comment</asp:LinkButton>
            <asp:LinkButton ID="show" runat="server" OnClick="show_Click">Show Comment</asp:LinkButton>
        
      </center>
               
      
        
</asp:Content>

