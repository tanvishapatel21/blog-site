using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class forgot3 : System.Web.UI.Page
{
    SqlConnection con;
    SqlCommand com;
    SqlDataReader dr;
    SqlDataAdapter da;
    DataSet ds = new DataSet();
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string strcon = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(strcon);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        i = Convert.ToInt16(Request.QueryString["register_id"]);
        string str = "select *from register where register_id='" + i + "'";
        con.Open();
        da = new SqlDataAdapter(str, con);
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            if(newpassword.Text==cpassword.Text)
            {
                i = Convert.ToInt16(Request.QueryString["register_id"]);
                com = new SqlCommand("update register set register_password='" + newpassword.Text + "',register_cpassword='"+cpassword.Text+"' where register_id='" + i + "'", con);
                com.ExecuteNonQuery();
                Response.Redirect("login.aspx");
            }
            else
            {
                Label4.Text = "Both password Must Be Same";
            }
        }
        con.Close();

    }
}