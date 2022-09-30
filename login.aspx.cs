using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testone
{
    public partial class login : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Registration.aspx");
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text == String.Empty)
            {
                error.InnerText = "Invalid input";
                TextBox1.Focus();
            }
            else
            {
                Session["forgotpassword"] = TextBox1.Text.Trim();
                Response.Redirect("ForgotPassword.aspx");
            }
        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Common.GetConnectionString());
            cmd = new SqlCommand(@"Select * from Acc where Username = @Username and Password = @Password", con);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Password", TextBox2.Text.Trim());
            try
            {
                con.Open();
                reader = cmd.ExecuteReader();
                bool isTrue = false;
                while (reader.Read())
                {
                    isTrue = true;
                    Session["userID"] = reader["AccID"].ToString();
                }
                if (isTrue)
                {
                    Response.Redirect("PerformTransaction.aspx", false);
                }
                else
                {
                    error.InnerText = "Invalid input";
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Error -123 " + ex.Message + " ');</script>");
            }
            finally
            {
                reader.Close();
                con.Close();
            }
        }
    }
}