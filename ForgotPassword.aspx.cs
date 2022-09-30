using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testone
{
    public partial class ForgotPassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                getusrsecq();
            }
        }

        void getusrsecq()
        {
            if (Session["forgotpassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Select a.Username, s.SecQname, a.Answer from Acc a inner join SecQ s on a.SecQID = s.SecQID where Username = @Username", con);
                cmd.Parameters.AddWithValue("@Username", Session["forgotpassword"]);
                try
                {
                    con.Open();
                    reader = cmd.ExecuteReader();
                    bool isTrue = false;
                    while (reader.Read()) 
                    {
                        isTrue = true;
                        lblusername.Text = reader["Username"].ToString();
                        lblsecq.Text = reader["SecQName"].ToString();
                        hdnAnswer.Value = reader["Answer"].ToString();
                    }
                    if (!isTrue)
                    {
                        error.InnerText = "Invalid input";
                    }
                }
                catch (Exception ex)
                {
                    Response.Write("<script>alert('Error - 321" + ex.Message + " ');</script>");
                }
                finally
                {
                    reader.Close();
                    con.Close();
                }
            }
        }

        protected void btnforgotpassword_Click(object sender, EventArgs e)
        {
            if(txtanswer.Text.Trim() == hdnAnswer.Value)
            {
                Response.Redirect("ChangePassword.aspx");
            }
            else
            {
                error.InnerText = "Invalid input";
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}