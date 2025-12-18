using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class blog : System.Web.UI.Page
{
    SqlConnection con;
    SqlConnection con1;
    SqlCommand com;
    SqlDataReader dr;
    DataSet ds;
    public static int i, id;
    string img;
    string nm;
    string img6;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(s);
        if (Session["register_username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        if(!IsPostBack)
        {
            addcategory.Items.Clear();
            addcategory.Items.Add("---selected---");
            con.Open();
            int a = 1;
            com = new SqlCommand("select * from category",con);
            dr = com.ExecuteReader();
            if(dr.HasRows)
            {
                while(dr.Read())
                {
                    addcategory.Items.Insert(a,new ListItem(dr["category_name"].ToString()));
                    a++;
                }
            }
            con.Close();
        }
        if(!IsPostBack)
        {

      
        if(Request.QueryString["blog_id"]!=null)
        {
            int blog_id = Convert.ToInt16(Request.QueryString["blog_id"].ToString());
            com = new SqlCommand("select *from blog where blog_id=" + blog_id, con);
            con.Open();
            dr = com.ExecuteReader();
            if(dr.HasRows)
            {
                dr.Read();
                addcategory.SelectedValue = dr["blog_category_id"].ToString();
                blog_name.Text = dr["blog_name"].ToString();
                about_blog.Text = dr["blog_about"].ToString();
               // img1.ImageUrl = dr["blog_image"].ToString();
                dr.Close();
            }
            con.Close();
        }
        }
       
     
       

       
      

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s1 = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con1 = new SqlConnection(s1);
        int id1 = Convert.ToInt16(Session["register_id"]);
        DateTime dt = DateTime.Now;

        string dt1 = dt.ToString("dd/MM/yyyy");
        com = new SqlCommand("select *from register where register_id=" + id1, con);
        con.Open();
        dr = com.ExecuteReader();
      
            if (dr.HasRows)
            {
                dr.Read();
                 nm = dr["register_username"].ToString();
                 img6 = dr["profile_image"].ToString();
        }
        con.Close();
   
        if(Image.HasFile)
        {
            Image.SaveAs(MapPath("~/images/" + Image.FileName));
            img = "~/images/" + Image.FileName;
        }
        com = new SqlCommand("insert into blog(blog_category_id,blog_user_id,blog_name,blog_about,blog_image,user_image,date,user_id) values('" + addcategory.Text + "','" +nm+ "','" + blog_name.Text + "','" + about_blog.Text + "','" + img + "','"+img6+"','"+dt1+"','"+id1+"')",con1);
        con1.Open();
        int j = com.ExecuteNonQuery();
       if(j>0)
       {
           Response.Redirect("all_blog.aspx");
       }
        con1.Close();

    }
    
    protected void Button2_Click(object sender, EventArgs e)
    {
        blog_name.Text = "";
        about_blog.Text = "";
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
      if(Request.QueryString["blog_id"]!=null)
      {
          string img = "../images/" + Image.FileName;
          if(Image.FileName=="")
          {
              img = img1.ImageUrl.ToString();
          }
          else
          {
              Image.SaveAs(MapPath("images/" + Image.FileName));
          }
          int i = Convert.ToInt16(Request.QueryString["blog_id"].ToString());
          com = new SqlCommand("update blog set blog_category_id='" + addcategory.SelectedValue +"',blog_name='"+blog_name.Text+"',blog_about='"+about_blog.Text+"',blog_image='"+img+ "'where blog_id='" + i + "'", con);
          con.Open();
          int i1 = com.ExecuteNonQuery();
          if(i1>0)
          {
              Response.Redirect("your_blog.aspx");
          }
          con.Close();
      }
    }
}