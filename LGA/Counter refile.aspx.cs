﻿using System;
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
    public partial class Counter_refile : System.Web.UI.Page
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
                String insert = "insert into CounterRefill values(@CylType,@ConsumerNo,@Name,@Filled,@Empty,@Amount,@DayEndTotal,@Date)";
                SqlCommand cmd = new SqlCommand(insert, con);
                cmd.Parameters.AddWithValue("@CylType", DropDownList1.Text);
                cmd.Parameters.AddWithValue("@ConsumerNo", TextBox5.Text);
                cmd.Parameters.AddWithValue("@Name", nametxt.Text);
                cmd.Parameters.AddWithValue("@Filled", TextBox2.Text);
                cmd.Parameters.AddWithValue("@Empty", TextBox3.Text);
                cmd.Parameters.AddWithValue("@Amount", TextBox4.Text);
                cmd.Parameters.AddWithValue("@DayEndTotal", TextBox6.Text);
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