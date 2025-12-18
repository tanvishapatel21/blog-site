using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgot1 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(strcon);
            
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
            com=new SqlCommand("select *from register where register_username='"+username1.Text+"'",con);
            con.Open();
            dr = com.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            i = Convert.ToInt16(dr["register_id"].ToString());
            Response.Redirect("forgot2.aspx?register_id=" + i);
        }
        else
        {
            Label2.Text = "Can't match username";
        }
        con.Close();
    }
}