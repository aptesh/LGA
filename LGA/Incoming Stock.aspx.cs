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
    public partial class Incoming_Stock : System.Web.UI.Page
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
                String insert = "insert into IncomingStock values(@Source,@Filled,@Empty,@Date)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@Source", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@Filled", TextBox1.Text);
                cmd.Parameters.AddWithValue("@Empty", TextBox2.Text);
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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                DataClasses1DataContext dc = new DataClasses1DataContext();
                string format = "MM/dd/yyyy HH:mm:ss";

                DateTime fromdate = Convert.ToDateTime(TextBox3.Text);
                DateTime todate = Convert.ToDateTime(TextBox4.Text + " 23:59:59");

                string fromdateString = fromdate.ToString(format);
                string todateString = todate.ToString(format);

                if (DropDownList1.SelectedIndex == 0)
                {
                    var result = from x in dc.IncomingStocks where x.Date >= Convert.ToDateTime(fromdateString) && x.Date <= Convert.ToDateTime(todateString) select x;
                    GridView1.DataSource = result;
                    GridView1.DataBind();
                }

            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }



            String query = "select Source, Filled, Empty, Date from IncomingStock";
            SqlCommand cmd1 = new SqlCommand(query, con);

            SqlDataReader srd = cmd1.ExecuteReader();
            while (srd.Read())
            {
                DropDownList1.Text = srd.GetValue(0).ToString();
                TextBox1.Text = srd.GetValue(1).ToString();
                TextBox2.Text = srd.GetValue(2).ToString();
               

            }
            srd.Close();
            con.Close();

            con.Open();
            SqlCommand crd = new SqlCommand("select * from Stock", con);
            SqlDataReader rd = crd.ExecuteReader();
            rd.Read();
            float Tcyl = float.Parse(rd[1].ToString()) - float.Parse(Label3.Text);
             

            rd.Close();
            con.Close();

            con.Open();

            String update = "update Stock set [14.2 cyl]='" + Tcyl + "'";
            SqlCommand com = new SqlCommand(update, con);
            com.ExecuteNonQuery();
            con.Close();
        }
    }
}