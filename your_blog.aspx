<%@ Page Title="" Language="C#" MasterPageFile="~/index.master" AutoEventWireup="true" CodeFile="your_blog.aspx.cs" Inherits="your_blog" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
      <section id="hero" class="hero">

      <img src="assets/img/hero-bg.jpg" alt="" data-aos="fade-in"/>

      <div class="container">
        <div class="row">
          <div class="col-lg-10">
            <h2 data-aos="fade-up" data-aos-delay="100">Here user can see Their own blog...!!</h2>
            <p data-aos="fade-up" data-aos-delay="200">please scroll down.....<br />
                </p>
              </div>
            </div>
          </div>
       </section>
    <asp:SqlDataSource ID="view_register" runat="server" ConnectionString="<%$ConnectionStrings:con_str %>" SelectCommand="select *from [blog] where (user_id=@register_id)">
        <SelectParameters>
            <asp:SessionParameter Name="register_id" SessionField="register_id" Type="Int16"/>
        </SelectParameters>
   </asp:SqlDataSource>
    <br /><br />
    <center>
    <div id="view_reg">
        
    <asp:GridView ID="register_view" runat="server" AutoGenerateColumns="false" DataSourceID="view_register" CellPadding="3" GridLines="Vertical">
        

        
        <Columns>
            <asp:BoundField DataField="register_id" HeaderText="ID" Visible="false" />
               <asp:BoundField DataField="blog_category_id" HeaderText="category"  />
            <asp:BoundField DataField="blog_name" HeaderText="Name" />
            <asp:BoundField DataField="blog_about" HeaderText="Description" />
            
             <asp:TemplateField HeaderText="Image" SortExpression="image">
          <EditItemTemplate>
              <asp:TextBox ID="tb1" runat="server" Text='<%#Bind("blog_image") %>'  >

              </asp:TextBox>
          </EditItemTemplate>
            <ItemTemplate>
              <asp:Image ID="imag1" runat="server" ImageUrl='<%#Eval("blog_image") %>' height="100" Width="100" BorderStyle="Groove"></asp:Image>
          </ItemTemplate>
      </asp:TemplateField>
            <asp:BoundField DataField="date" HeaderText="Date" />
          
        <asp:TemplateField HeaderText="Action">
                <ItemTemplate>
                    <a href="blog.aspx?blog_id=<%#Eval("blog_id") %>"><img src="images/e3.jfif" height="40px" width="40px" onclick="return upd();" /></a>
              <br />         

                                    <a href="your_blog.aspx?blog_id=<%#Eval("blog_id") %>"><img src="../images/images.jfif" height="40px" width="40px" onclick="return del();" /></a>
    </ItemTemplate>
            </asp:TemplateField>
          
            </Columns>
         
    </asp:GridView>
        </div>
        </center>
     
</asp:Content>

