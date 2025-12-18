using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class blog_detail : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(s);
        if (Session["register_username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        id = Convert.ToInt16(Request.QueryString["blog_id"].ToString());
        com = new SqlCommand("select *from blog where blog_id=" + id, con);
        con.Open();
        dr = com.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            Image1.ImageUrl = dr["blog_image"].ToString();
            blog_name.Text = dr["blog_name"].ToString();
            cate.Text = dr["blog_category_id"].ToString();
            des.Text = dr["blog_about"].ToString();
            user.Text = dr["blog_user_id"].ToString();
            Image2.ImageUrl = dr["user_image"].ToString();
           

           
        }
        con.Close();
        show.Visible = false;


    }
    protected void ok_Click(object sender, EventArgs e)
    {

       // int i = Convert.ToInt32(Session["register_id"]);
        DateTime dt = DateTime.Now;

        string dt1 = dt.ToString("dd-MM-yyyy");
        int post_id = Convert.ToInt16(Request.QueryString["blog_id"].ToString());

        string nm = Convert.ToString(Session["register_username"]);
        com = new SqlCommand("insert into comment(comment_des,comment_date,comment_username,post_id) values ('" + TextBox1.Text + "','" + dt1 + "','" + nm + "','"+post_id+"')", con);
        con.Open();
        int j = com.ExecuteNonQuery();
        if (j > 0)
        {
            Response.Redirect("all_blog.aspx");
        }
        con.Close();
    }
    protected void hide_Click(object sender, EventArgs e)
    {
        show.Visible = true;
        hide.Visible = false;
        datalist1.Visible = false;
    }
    protected void show_Click(object sender, EventArgs e)
    {
        show.Visible = false;
        hide.Visible = true;
        datalist1.Visible = true;
    }
}