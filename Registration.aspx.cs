using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Testone
{
    public partial class Registration : System.Web.UI.Page
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                LbAccnum.Text = displayAccountNumber();
            }
        }

        string displayAccountNumber()
        {
            con = new SqlConnection(Common.GetConnectionString());
            cmd = new SqlCommand(@"Select 'ABC20220000' + CAST( MAX( CAST( SUBSTRING( AccNum, 12, 50 ) AS INT)) +1 AS VARCHAR) AS AccNum from Acc", con);
            con.Open();
            reader = cmd.ExecuteReader();
            string accountNumber = string.Empty;
            while(reader.Read())
            {
                accountNumber = reader["AccNum"].ToString();
            }
            reader.Close();
            con.Close();
            return accountNumber;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            con = new SqlConnection(Common.GetConnectionString());
            cmd = new SqlCommand(@"Insert into Acc(AccNum, AccType, Username, Gender, Email, Address, SecQID, Answer, Amount, Pasword) 
                                    values(@AccNum, @AccType, @Username, @Gender, @Email, @Address, @SecQID, @Answer, @Amount, @Pasword)", con);
            cmd.Parameters.AddWithValue("@AccNum", LbAccnum.Text);
            cmd.Parameters.AddWithValue("@AccType", LbAcctype.Text);
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text.Trim());
            cmd.Parameters.AddWithValue("@Gender", ddGender.SelectedValue);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
            cmd.Parameters.AddWithValue("@Address", txtaddress.Text.Trim());
            cmd.Parameters.AddWithValue("@SecQID", ddSecurityQuestion.SelectedValue);
            cmd.Parameters.AddWithValue("@Answer", txtAnswer.Text.Trim());
            cmd.Parameters.AddWithValue("@Amount", txtAmount.Text.Trim());
            cmd.Parameters.AddWithValue("@Pasword", TextBox2.Text.Trim());
            try
            {
                con.Open();
                int r = cmd.ExecuteNonQuery();
                if(r>0)
                {
                    Response.Redirect("login.aspx", false);
                }
                else
                {
                    error.InnerText = "Invalid input";
                }
            }
            catch(Exception ex)
            {
                if(ex.Message.Contains("Violation of UNIQUE KEY constraints"))
                {
                    error.InnerText = "User name already exists";
                }
                else
                {
                    Response.Write("<script>alert('Error - " + ex.Message + " ');</script>");
                }
            }
            finally
            {
                con.Close();
            }
        }

        protected void btncancel_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}