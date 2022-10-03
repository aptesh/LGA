using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace LGA
{
    public partial class DellyReductionData : System.Web.UI.Page
    {
        SqlConnection con;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["LGA"].ConnectionString);
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                String insert = "insert into DellyData values(@Source,@Filled,@Empty,@Pending,@Date)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@Source", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Filled", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Empty", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Pending", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Date", DateTime.Now);
               

                cmd.ExecuteNonQuery();
                Response.Write("<script>alert('Data Entered ')</script>");

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }
    }
}