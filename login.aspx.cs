using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class login : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(s);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string unm = username.Text;
        string pwd = password.Text;
        int i;
        con.Open();
        com = new SqlCommand("select *from register where register_username='" + username.Text + "'and register_password='" + password.Text + "'", con);

        SqlDataReader dr;
        dr = com.ExecuteReader();
        if (dr.HasRows)
        {
            dr.Read();
          
           
                Session["register_id"] = dr["register_id"].ToString();
                Session["register_username"] = unm;
               
                Response.Redirect("home.aspx");


            
        }
        else
        {
            username.Text = "";
            password.Text = "";
            Label3.Text = "Incorrect";
        }
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        username.Text = "";
        password.Text = "";
    }
}