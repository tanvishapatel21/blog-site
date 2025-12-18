using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class index : System.Web.UI.MasterPage
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    string img;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(strcon);
         int id = Convert.ToInt32(Session["register_id"]);
        com = new SqlCommand("select *from register where register_id=" + id, con);
        con.Open();
        dr = com.ExecuteReader();
       
            if (dr.HasRows)
            {
                dr.Read();
                tanu.ImageUrl = dr["profile_image"].ToString();
                
            }
           
        
       
    
        if (Session.Contents.Keys.Count > 0)
        {

            tanu.ImageUrl = dr["profile_image"].ToString();
            welcome.Text = dr["register_username"].ToString();

            userlogin.Visible = false;
            userlogout.Visible = true;
            changepwd.Visible = true;
            feedback.Visible = true;
            edit_pro.Visible = true;
            Blogs.Visible = true;


        }
        else
        {
            userlogin.Visible = true;
            userlogout.Visible = false;
            changepwd.Visible = false;
            feedback.Visible = false;
            edit_pro.Visible = false;
            Blogs.Visible = false;
            tanu.Visible = false;
        }
    }
    protected void userlogout_Click(object sender, EventArgs e)
    {
        Session.Abandon();
        Session.Remove("register_username");
        Session["register_username"] = "";
        Response.Redirect("login.aspx");
    }
}
