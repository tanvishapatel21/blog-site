using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class your_blog : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    
    protected void Page_Load(object sender, EventArgs e)
    {
         string strcon = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(strcon);
        if (Session["register_username"] == null)
        {
            Response.Redirect("login.aspx");
        }
     if(Request.QueryString["blog_id"]!=null)
     {
         int a=Convert.ToInt16(Request.QueryString["blog_id"].ToString());
         com=new SqlCommand("delete from blog where blog_id="+a,con);
         con.Open();
         int i=com.ExecuteNonQuery();
         if(i>0)
         {
             Response.Redirect("your_blog.aspx");
         }
         con.Close();


     }
    }
}