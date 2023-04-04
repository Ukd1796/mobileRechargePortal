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

public partial class Simregistration : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {   
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from simdetails where simid='"+sid.Text+"'",con);
        SqlDataReader dr = cmd.ExecuteReader();
        if (!dr.Read())
        {


            con.Close();
            con.Open();
            SqlCommand cmd1 = new SqlCommand("insert into simdetails values('" + sid.Text + "','" + fnm.Text + "','"+mnm.Text+"','"+lnm.Text+"','"+mno.Text+"','" + d1.Text + "','" + gender.SelectedItem.Text + "','" + addr.Text + "','" +paddr.Text + "','" + em.Text + "','" + pno.Text + "','" + accbal.Text + "')", con);
            cmd1.ExecuteNonQuery();
            con.Close();
            info.Text = "Registration is done sucessfully...";

        }

        else
        {
            con.Close();
            con.Open();
            info.Text = "invalid Entry !!! this Sim is already registered...";
            con.Close();


        }


        }


    }

