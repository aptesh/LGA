using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace SNLM_v0._00
{
    public partial class Advertise : System.Web.UI.Page
    {
        SqlConnection con;
        int noOfpn, totalamt;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);
        }
        public void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList2.SelectedItem.Value == "One")
            {
                noOfpn = 1;
            }
            else if (DropDownList2.SelectedItem.Value == "Two")
            {
                noOfpn = 2;
            }
            else if (DropDownList2.SelectedItem.Value == "Three")
            {
                noOfpn = 3;
            }
            else if (DropDownList2.SelectedItem.Value == "Four")
            {
                noOfpn = 4;
            }
            else if (DropDownList2.SelectedItem.Value == "Five")
            {
                noOfpn = 5;
            }
            else if (DropDownList2.SelectedItem.Value == "Six")
            {
                noOfpn = 6;
            }
            else if (DropDownList2.SelectedItem.Value == "Seven")
            {
                noOfpn = 7;
            }
            else if (DropDownList2.SelectedItem.Value == "Eight")
            {
                noOfpn = 8;
            }
            else if (DropDownList2.SelectedItem.Value == "Nine")
            {
                noOfpn = 9;
            }
            else if (DropDownList2.SelectedItem.Value == "Ten")
            {
                noOfpn = 10;
            }
        }
        protected void DropDownList4_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList4.SelectedItem.Value == "Ac")
            {
                totalamt = noOfpn * 300;
            }
            else if (DropDownList4.SelectedItem.Value == "NonAc")
            {
                totalamt = 200 * noOfpn;
            }

            RoomRate.Text = totalamt.ToString();
        }

        protected void AddChkAvilablity_Click(object sender, EventArgs e)
        {
            if (con.State == ConnectionState.Closed) con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO RoomBooking([Name],[PhoneNumber],[DateOfArrival],[DateOfDeparture],[RoomType],[NoOfRoom],[RoomRate],[NoOfPerson]) VALUES(@Name, @PhoneNumber, @DateOfArrival, @DateOfDeparture,@RoomType, @NoOfRoom,@RoomRate,@NoOfPerson)", con);
            cmd.Parameters.AddWithValue("@Name", AddFullName.Text);
            cmd.Parameters.AddWithValue("@PhoneNumber", AddPhone.Text);
            cmd.Parameters.AddWithValue("@DateOfArrival", DateofArrival.Text);
            cmd.Parameters.AddWithValue("@DateOfDeparture", DateOfDeparture.Text);
            cmd.Parameters.AddWithValue("@RoomType", DropDownList4.Items[DropDownList4.SelectedIndex].ToString());
            cmd.Parameters.AddWithValue("@NoOfRoom", DropDownList2.Items[DropDownList2.SelectedIndex].ToString());
            cmd.Parameters.AddWithValue("@NoOfPerson", DropDownList3.Items[DropDownList3.SelectedIndex].ToString());
            cmd.Parameters.AddWithValue("@RoomRate", RoomRate.Text);
            cmd.ExecuteNonQuery();
            
            if (con.State == ConnectionState.Open) con.Close();
        }

        

    }
}