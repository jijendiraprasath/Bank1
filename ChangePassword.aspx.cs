using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Runtime.Remoting.Messaging;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testone
{
    public partial class ChangePassword : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnChangePass_Click(object sender, EventArgs e)
        {
            if (Session["forgotpassword"] != null)
            {
                con = new SqlConnection(Common.GetConnectionString());
                cmd = new SqlCommand(@"Update Acc set Password = @Password where Username = @Username", con);
                cmd.Parameters.AddWithValue("@Password", txtNewPass.Text.Trim());
                cmd.Parameters.AddWithValue("@Username", Session["forgotpassword"]);
                try
                {
                    con.Open();
                    int r = cmd.ExecuteNonQuery();
                    if(r>0)
                    {
                        Response.Redirect("Login.aspx", false);
                    }
                    else
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
                    con.Close();
                }
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("ForgotPassword.aspx");
        }
    }
}