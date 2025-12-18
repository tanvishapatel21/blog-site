using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;



public partial class forgot2 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(strcon);
        i = Convert.ToInt16(Request.QueryString["register_id"]);
        com = new SqlCommand("select *from register where register_id='" + i + "'", con);
        con.Open();
        dr = com.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            question.Text=dr["register_security_question"].ToString();
        }
        con.Close();
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        com = new SqlCommand("select *from register where register_security_question='" + question.Text + "' and register_id='" + i + "'", con);
        con.Open();
        dr = com.ExecuteReader();
        if(dr.HasRows)
        {
            dr.Read();
            if(dr["register_answer"].ToString()==answer.Text)
            {
                i = Convert.ToInt32(dr["register_id"].ToString());
                Response.Redirect("forgot3.aspx?register_id=" + i);
            }
            else
            {
                Label4.Text = "InCorrect Answer";
            }
        }
        con.Close();
    }
}