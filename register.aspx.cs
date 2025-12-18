using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class register : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    //SqlDataReader dr;
    string img;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(strcon);
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string g;
        if(RadioButton1.Checked==true)
        {
            g=RadioButton1.Text;
        }
        else
        {
            g=RadioButton2.Text;
        }
        if(Image.HasFile)
        {
            Image.SaveAs(MapPath("~/images/" + Image.FileName));
            img = "~/images/"+ Image.FileName;
        }
        con.Open();
        com = new SqlCommand("insert into register (register_firstname,register_lastname,register_contact,register_city,register_address,register_dob,register_gender,register_username,register_password,register_cpassword,register_security_question,register_answer,profile_image) values('" +register_firstname.Text + "','"+register_lastname.Text+"','"+register_contact.Text+"','"+register_city.Text+"','"+register_address.Text+"','"+register_dob.Text+"','"+g+"','"+register_username.Text+"','"+register_password.Text+"','"+register_cpassword.Text+"','"+register_security_question.Text+"','"+register_answer.Text+"','"+img+"')", con);
        int i=com.ExecuteNonQuery();
        con.Close();
        clear();
        if(i>0)
        {
            Response.Redirect("login.aspx");
        }
    }
    void clear()
    {
        register_firstname.Text = "";
        register_lastname.Text = "";
        register_contact.Text = "";
        register_city.Text = "";
        register_address.Text = "";
        register_dob.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        register_username.Text = "";
        register_password.Text = "";
        register_cpassword.Text = "";
        register_answer.Text = "";


    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        register_firstname.Text = "";
        register_lastname.Text = "";
        register_contact.Text = "";
        register_city.Text = "";
        register_address.Text = "";
        register_dob.Text = "";
        RadioButton1.Checked = false;
        RadioButton2.Checked = false;
        register_username.Text = "";
        register_password.Text = "";
        register_cpassword.Text = "";
        register_answer.Text = "";
    }
}