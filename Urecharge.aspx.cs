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
using System.Numeric;

public partial class Urecharge : System.Web.UI.Page
{
    SqlConnection con = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\ASPNETDB.MDF;Integrated Security=True;User Instance=True");
    SqlConnection co1 = new SqlConnection("Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\BankDatabase.mdf;Integrated Security=True;User Instance=True");
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void amt_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        info.Text = " ";
        bala.Text = " ";
        if (Phno.Text == RPhno.Text)
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from simdetails  where Mobno ='" + Phno.Text + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {
                    double acbal = Convert.ToDouble(dr.GetFloat(11));
                    con.Close();
                    co1.Open();
                   
                    SqlCommand cmd1 = new SqlCommand("select * from account  where credicardno='" + num.Text + "'", co1);
                    SqlDataReader dr1 = cmd1.ExecuteReader();
                    if (!dr1.Read())
                    {
                        co1.Close();
                        info.Text = "This is an invalid card!!!!!!!!!";
                    }
                    else
                    {
                        co1.Close();
                        co1.Open();
                        SqlCommand cmd2 = new SqlCommand("select * from account ", co1);
                        SqlDataReader dr2 = cmd2.ExecuteReader();
                        if (dr2.Read())
                        {

                            double balamt = Convert.ToDouble( dr2.GetFloat(4));
                            double crlimit = Convert.ToDouble( dr2.GetFloat(3));

                            co1.Close();
                            con.Open();

                            int a =Convert.ToInt32( amt.SelectedItem.Text);
                            SqlCommand cmd5 = new SqlCommand("select * from offers where Recharge_amt = '" +a+" '", con);
                            SqlDataReader dr5 = cmd5.ExecuteReader();
                            if (dr5.Read())
                            {
                                double am = Convert.ToDouble(dr5.GetInt32(0));
                                double tot = balamt - am;
                                double tt = Convert.ToDouble(dr5.GetInt32(1));
                                acbal = acbal + tt;
                                con.Close();
                               
                            if (tot < crlimit)
                            {
                                co1.Close();
                                info.Text = "No enough balance in your account";
                            }

                            else
                            {
                                con.Open();
                                SqlCommand cmd3 = new SqlCommand("insert into reharge values('" + Phno.Text + "','" + Eid.Text + "','" + amt.SelectedItem.Text + "','" + num.Text + "','" + tot + "')", con);
                                cmd3.ExecuteNonQuery();
                                SqlCommand cmd6 = new SqlCommand("update  simdetails  set accbal = " + acbal + " where Mobno = '" + Phno.Text + "'", con);
                                cmd6.ExecuteNonQuery();
                                con.Close();
                                co1.Open();
                                SqlCommand cmd4 = new SqlCommand("update  account  set balance = "+tot+" where credicardno = '" + num.Text + "'", co1);
                                cmd4.ExecuteNonQuery();
                                co1.Close();
                                info.Text = "Recharge completed sucessfully...";
                                bala.Text = Convert.ToString(acbal);
                            }
                            co1.Close();
                        }
                      
                        else
                         {
                                con.Close();
                                info.Text = "Error";
                            }
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
                else
                {
                    info.Text = "invalid credit card?????";
                }

            }
            else
            {
                info.Text = "phone number mismatch???????";
            }

        }
    }
  
