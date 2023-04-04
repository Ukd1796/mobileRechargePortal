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
public partial class Ucomplaints : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Submit_Click(object sender, EventArgs e)
    {
        Info.Text = " ";
        con.Open();
        SqlCommand cm = new SqlCommand("Select * from simdetails where Mobno = '" + pno.Text + "'", con);
        SqlDataReader d = cm.ExecuteReader();
        if (!d.Read())
        {
            con.Close();
            Info.Text = "you are not a valid subscriber!!!!!!!!";
        }
        else
        {
            con.Close();
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Complaints values('" + pno.Text + "',' "+ TextBox1.Text +" ')", con);
            SqlDataReader dr = cmd.ExecuteReader();
            Info.Text = "Complaint Registered";
            pno.Text = " ";
            TextBox1.Text = " ";

        }
    }
}
