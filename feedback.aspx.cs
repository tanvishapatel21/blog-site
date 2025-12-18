using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class feedback : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(s);
        if(Session["register_username"]==null)
        {
            Response.Redirect("login.aspx");
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        int i = Convert.ToInt32(Session["register_id"]);
        DateTime dt = DateTime.Now;

        string dt1=dt.ToString("dd-MM-yyyy");


        string nm=Convert.ToString(Session["register_username"]);
        com=new SqlCommand("insert into feedback(feedback_username,feedback_review,date_time) values ('"+nm+"','"+feedback1.Text+"','"+dt1+"')",con);
        con.Open();
        int j = com.ExecuteNonQuery();
        if (j > 0)
        {
            Response.Redirect("home.aspx");
        }
        con.Close();
    }
}