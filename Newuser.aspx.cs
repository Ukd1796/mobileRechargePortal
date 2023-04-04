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

public partial class Newuser : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Label1.Text = " ";
        if (pass1.Text == pass2.Text)
        {
            con.Open();
            SqlCommand cm = new SqlCommand("Select * from simdetails where Mobno = '" + mno.Text + "'", con);
            SqlDataReader d = cm.ExecuteReader();
            if (!d.Read())
            {
                con.Close();
                Label6.Text = "you are not a valid subscriber!!!!!!!!";
            }
            else
            {
                con.Close();
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from newuser where Username='" + uname.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                //con.Close();
                if (!dr.Read())
                {


                    con.Close();
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("insert into newuser values('" + uname.Text + "','" + mno.Text + "','" + pass1.Text + "','" + em.Text + "')", con);
                    cmd1.ExecuteNonQuery();
                    con.Close();
                    Label6.Text = "Sign up done sucessfully...";

                }

                else
                {
                    con.Close();
                    con.Open();
                    Label11.Text = "user name already exits...";
                    con.Close();
                }
               // con.Close();
            }
        }
        else
            Label11.Text = "Password must match with Confirm Password....!!";  

        }
 
        
        
    
    
protected void  Button2_Click(object sender, EventArgs e)
{
 Response.Redirect("Login.aspx");
}
protected void pass1_TextChanged(object sender, EventArgs e)
{

}
}
       
   
