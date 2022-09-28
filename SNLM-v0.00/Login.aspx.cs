using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace SNLM_v0._00
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);

        }

        protected void LoginID_Click(object sender, EventArgs e)
        {

            try
            {
                if (con.State == ConnectionState.Closed) con.Open();

                SqlCommand cmd = new SqlCommand("select * from [UserInfo] where [UserID]=@txtUname", con);
                cmd.Parameters.AddWithValue("@txtUname", UserNameID.Text);
                SqlDataReader dr = cmd.ExecuteReader();

                string username = UserNameID.Text;
                string password = PasswordID.Text;

                dr.Read();

                if (dr.HasRows)
                {
                    if ((dr["UserID"].ToString() == username) && (dr["Password"].ToString() == password))
                    {
                        Response.Redirect("Dashboard.aspx");
                    }
                    else
                    {
                        Response.Write("<script>alert('Password not match..')</script>");
                    }
                }
                else
                {
                    Response.Write("<script>alert('Kidding')</script>");
                }

                dr.Close();
                if (con.State == ConnectionState.Open) con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}