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
    public partial class Delivary_Man_Data : System.Web.UI.Page
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
                String insert = "insert into DeliveryManData values(@DeliveryManName,@Area,@Cost,@Filled,@Empty,@Amount,@Online,@DayEndTotal,@Date)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@DeliveryManName", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Area", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Cost", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Filled", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Empty", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Amount", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Online", TextBox6.Text);
                cmd.Parameters.AddWithValue("@DayEndTotal", TextBox7.Text);
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