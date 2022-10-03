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
    public partial class Counter_Connection : System.Web.UI.Page
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
                String insert = "insert into CounterConection values(@ConnectionType,@Name,@Address,@CylGiven,@Filled,@Empty,@Regulator,@Trolly,@Stove,@RuberTube,@Amount,@DayEndTotal,@Date)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@ConnectionType", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Name", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Address", TextBox2.Text);
                cmd.Parameters.AddWithValue("@CylGiven", DropDownList2.Text);
                cmd.Parameters.AddWithValue("@Filled", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Empty", TextBox10.Text);
                cmd.Parameters.AddWithValue("@Regulator", TextBox4.Text);
                cmd.Parameters.AddWithValue("@Trolly", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Stove", TextBox6.Text);
                cmd.Parameters.AddWithValue("@RuberTube", TextBox7.Text);
                cmd.Parameters.AddWithValue("@Amount", TextBox8.Text);
                cmd.Parameters.AddWithValue("@DayEndTotal", TextBox9.Text);
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