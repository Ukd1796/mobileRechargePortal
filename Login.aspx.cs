using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;

public partial class Login : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    
    protected void  Button1_Click(object sender, EventArgs e)
    {
        con.Open();
        SqlCommand cm = new SqlCommand("select * from newuser where Username = '"+TextBox1.Text+"'",con);
        SqlDataReader dr = cm.ExecuteReader();
        if(! dr.Read())
        {
            con.Close();
            con.Open();
            msg.Text="You are not a valid user?? Please Register first inorder to login!!!";
            con.Close();

        }
        else
        {
            Response.Redirect("userhome.aspx");
        }
        con.Close();
    }
    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Newuser.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text == "admin" & TextBox2.Text == "admin")
        {
            Response.Redirect("Adminhome.aspx");
        }
        else
        {
            msg.Text = "Your not a valid administrator";
        }
    }
}
