using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

public partial class changepass : System.Web.UI.Page
{
    SqlConnection con;
    int i;
    protected void Page_Load(object sender, EventArgs e)
    {
        string s = ConfigurationManager.ConnectionStrings["registers"].ConnectionString;
        con = new SqlConnection(s);

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string str = "select *from register where register_password='" + oldpwd.Text + "'";
        con.Open();
        SqlDataAdapter da = new SqlDataAdapter(str, con);
        DataTable dt = new DataTable();
        DataSet ds = new DataSet();
        da.Fill(ds);
        if(ds.Tables[0].Rows.Count>0)
        {
            if(newpwd.Text==cpwd.Text)
            {
                Session["register_id"] = ds.Tables[0].Rows[0][0].ToString();
                int i = Convert.ToInt32(Session["register_id"]);
                string s = "update register set register_password='" + newpwd.Text + "', register_cpassword='" + newpwd.Text + "' where register_id=" + i;
                SqlDataAdapter sda = new SqlDataAdapter(s, con);
                DataTable sdt = new DataTable();
                DataSet sds = new DataSet();
                sda.Fill(sds);
                Response.Redirect("home.aspx");
            }
            else
            {

            }
        }
        else
        {
            Label3.Text = "old password incorrect";
        }
        con.Close();
    }
}