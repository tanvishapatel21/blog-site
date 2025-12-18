using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class edit_profile : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    int i;
    string g;
  
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["con_str"].ConnectionString;
        con = new SqlConnection(s);
        if (Session["register_username"] == null)
        {
            Response.Redirect("login.aspx");
        }
        int id = Convert.ToInt32(Session["register_id"]);
        com = new SqlCommand("select *from register where register_id=" + id, con);
        con.Open();
        dr = com.ExecuteReader();
        if (!IsPostBack)
        {


            if (dr.HasRows)
            {
                dr.Read();
                register_firstname.Text = dr["register_firstname"].ToString();
                register_lastname.Text = dr["register_lastname"].ToString();
                register_contact.Text = dr["register_contact"].ToString();
                register_city.Text = dr["register_city"].ToString();
                register_address.Text = dr["register_address"].ToString();
                register_username.Text = dr["register_username"].ToString();
                register_question.Text = dr["register_security_question"].ToString();
                register_answer.Text = dr["register_answer"].ToString();
                string g = dr["register_gender"].ToString();
                img1.ImageUrl = dr["profile_image"].ToString();
             if(RadioButton1.Text==g)
             {
                 RadioButton1.Checked = true;
             }
             else
             {
                 RadioButton2.Checked = true;
             }
          



            }
           
        }
        con.Close();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["con_str"].ConnectionString;
        con = new SqlConnection(s);
        int id1 = Convert.ToInt32(Session["register_id"]);
        string name = register_firstname.Text;
        if(RadioButton1.Checked==true)
        {
            g = RadioButton1.Text;  
        }
        else
        {
            g = RadioButton2.Text;
        }
        string img = "../images/" + Image.FileName;
        if (Image.FileName == "")
        {
            img = img1.ImageUrl.ToString();
        }
        else
        {
            Image.SaveAs(MapPath("images/" + Image.FileName));
        }
        com = new SqlCommand("update register set register_firstname='" + name + "',register_lastname='" + register_lastname.Text + "',register_contact='" + register_contact.Text + "',register_city='" + register_city.Text + "',register_address='" + register_address.Text + "',register_gender='" + g + "',register_username='" + register_username.Text + "',register_answer='" + register_answer.Text + "',profile_image='"+img+"' where register_id=" + id1, con);
        con.Open();
         i = com.ExecuteNonQuery();
        if (i > 0)
        {
            Response.Redirect("home.aspx");
        }
        con.Close();
        
    }
}