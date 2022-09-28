using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace SNLM_v0._00
{
    public partial class GestDetails : System.Web.UI.Page
    {
        SqlConnection con;
        String createdFileName;

        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["SNLMConnectionString"].ConnectionString);
        }

        protected void SAVEButton_Click(object sender, EventArgs e)
        {
            
            try
            {
                if (con.State == ConnectionState.Closed) con.Open();
                    SqlCommand insertcmd1 = new SqlCommand("insert into [CustomerDetails] ( [RoomNo],[CustomerName] ,[ContactNo] ,[Address],[Nationality],[Occupation],[NoOfPerson],[DateOfArival],[ArrivedFrom],[PurposrOfVisit],[DurationOfDay],[AddressToProceeding],[IdProof],[VehicalNo],[DateOfDeparture]) values(@RoomNo,@CustomerName,@ContactNo,@Address,@Nationality,@Occupation,@NoOfPerson,@DateOfArival,@ArrivedFrom,@PurposrOfVisit,@DurationOfDay,@AddressToProceeding,@IdProof,@VehicalNo,@DateOfDeparture)  ", con);
                    insertcmd1.Parameters.AddWithValue("@RoomNo", DropRoomNo.SelectedItem.Text);
                    insertcmd1.Parameters.AddWithValue("@CustomerName", FullName.Text);
                    insertcmd1.Parameters.AddWithValue("@ContactNo", ContactNoid.Text);
                    insertcmd1.Parameters.AddWithValue("@Address", AddressID.Text);
                    insertcmd1.Parameters.AddWithValue("@Nationality", NationalityID.Text);
                    insertcmd1.Parameters.AddWithValue("@Occupation", OccupationID.Text);
                    insertcmd1.Parameters.AddWithValue("@NoOfPerson", DropNoOfPersonID.SelectedItem.Text);
                    insertcmd1.Parameters.AddWithValue("@DateOfArival", DateOfArivalID.Text);
                    insertcmd1.Parameters.AddWithValue("@ArrivedFrom", ArriverFromID.Text);
                    insertcmd1.Parameters.AddWithValue("@PurposrOfVisit", TexPerposeOfVisitIDtBox1.Text);
                    insertcmd1.Parameters.AddWithValue("@DurationOfDay", DurationOfDayID.Text);
                    insertcmd1.Parameters.AddWithValue("@AddressToProceeding", AddressToProcedingID.Text);
                    insertcmd1.Parameters.AddWithValue("@IdProof", createdFileName);
                    insertcmd1.Parameters.AddWithValue("@VehicalNo", VehicalNoID.Text);
                    insertcmd1.Parameters.AddWithValue("@DateOfDeparture", DateOFDpartureID.Text);
                    insertcmd1.ExecuteNonQuery();

                    
                        

                        SqlCommand mem1cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem1cmd.Parameters.AddWithValue("@Name", PersonOne.Text);
                        mem1cmd.Parameters.AddWithValue("@Age", AgeOne.Text);
                        mem1cmd.ExecuteNonQuery();
                    
                        SqlCommand mem2cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem2cmd.Parameters.AddWithValue("@Name", PersonTwo.Text);
                        mem2cmd.Parameters.AddWithValue("@Age", AgeTwo.Text);
                        mem2cmd.ExecuteNonQuery();
                    
                        SqlCommand mem3cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem3cmd.Parameters.AddWithValue("@Name", PersonThree.Text);
                        mem3cmd.Parameters.AddWithValue("@Age", AgeThree.Text);
                        mem3cmd.ExecuteNonQuery();
                    
                        SqlCommand mem4cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem4cmd.Parameters.AddWithValue("@Name", PersonFour.Text);
                        mem4cmd.Parameters.AddWithValue("@Age", AgeFour.Text);
                        mem4cmd.ExecuteNonQuery();
                    
                        SqlCommand mem5cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem5cmd.Parameters.AddWithValue("@Name", PersonFive.Text);
                        mem5cmd.Parameters.AddWithValue("@Age", AgeFive.Text);
                        mem5cmd.ExecuteNonQuery();
                    
                        SqlCommand mem6cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem6cmd.Parameters.AddWithValue("@Name", PersonSix.Text);
                        mem6cmd.Parameters.AddWithValue("@Age", AgeSix.Text);
                        mem6cmd.ExecuteNonQuery();

                        SqlCommand mem7cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem7cmd.Parameters.AddWithValue("@Name", PersonSeven.Text);
                        mem7cmd.Parameters.AddWithValue("@Age", AgeSeven.Text);
                        mem6cmd.ExecuteNonQuery();

                        SqlCommand mem8cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem8cmd.Parameters.AddWithValue("@Name", PersonEight.Text);
                        mem8cmd.Parameters.AddWithValue("@Age", AgeEight.Text);
                        mem8cmd.ExecuteNonQuery();

                        SqlCommand mem9cmd = new SqlCommand("insert into [MemberCustDetails] ([RefId],[Name],[Age]) values(@RefId,@Name,@Age)", con);
                        mem9cmd.Parameters.AddWithValue("@Name", PersonNine.Text);
                        mem9cmd.Parameters.AddWithValue("@Age", AgeNine.Text);
                        mem9cmd.ExecuteNonQuery();

                    
                if (con.State == ConnectionState.Open) con.Close();

            }
            catch(Exception ex)
            {
                Response.Write(ex);
            }    
        }

        protected void Guest_Click(object sender, EventArgs e)
        {
            SearchGuest.Visible = false;
            GuestDetails.Visible = true;
        }

        protected void DropNoOfPersonID_Changed(object sender, EventArgs e)
        {
            if (DropNoOfPersonID.SelectedItem.Value == "Two")
            {
                Person2.Visible = true;
                Person3.Visible = false;
                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = true;
            }
            if (DropNoOfPersonID.SelectedItem.Value == "Three")
            {
                Person2.Visible = true;
                Person3.Visible = true;
               

                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = false;
                PrP5.Visible = false;
                PrP6.Visible = false;
                PrP7.Visible = false;
                PrP8.Visible = false;
                PrP9.Visible = false;

            }
            if (DropNoOfPersonID.SelectedItem.Value == "Four")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                

                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = true;
                PrP5.Visible = false;
                PrP6.Visible = false;
                PrP7.Visible = false;
                PrP8.Visible = false;
                PrP9.Visible = false;

            }
            if (DropNoOfPersonID.SelectedItem.Value == "Five")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = true;
                PrP5.Visible = true;
                PrP6.Visible = false;
                PrP7.Visible = false;
                PrP8.Visible = false;
                PrP9.Visible = false;
            }
           if (DropNoOfPersonID.SelectedItem.Value == "Six")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = true;
                PrP5.Visible = true;
                PrP6.Visible = true;
                PrP7.Visible = false;
                PrP8.Visible = false;
                PrP9.Visible = false;
            }
            if (DropNoOfPersonID.SelectedItem.Value == "Seven")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = true;
                PrP5.Visible = true;
                PrP6.Visible = true;
                PrP7.Visible = true;
                PrP8.Visible = false;
                PrP9.Visible = false;
            }
            if (DropNoOfPersonID.SelectedItem.Value == "Eight")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = true;
                Person8.Visible = true;
                Person9.Visible = false;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = true;
                PrP5.Visible = true;
                PrP6.Visible = true;
                PrP7.Visible = true;
                PrP8.Visible = true;
                PrP9.Visible = false;
            }

            if (DropNoOfPersonID.SelectedItem.Value == "Nine")
            { 
            
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "Nine")
            {
                Person2.Visible = true;
                Person3.Visible = true;
                Person4.Visible = true;
                Person5.Visible = true;
                Person6.Visible = true;
                Person7.Visible = true;
                Person8.Visible = true;
                Person8.Visible = true;
                Person9.Visible = true;
                PrP2.Visible = true;
                PrP3.Visible = true;
                PrP4.Visible = true;
                PrP5.Visible = true;
                PrP6.Visible = true;
                PrP7.Visible = true;
                PrP8.Visible = true;
                PrP9.Visible = true;
            }
            else if (DropNoOfPersonID.SelectedItem.Value == "One")
            {
                Person2.Visible = false;
                Person3.Visible = false;
                Person4.Visible = false;
                Person5.Visible = false;
                Person6.Visible = false;
                Person7.Visible = false;
                Person8.Visible = false;
                Person9.Visible = false;
                PrP2.Visible = false;
                PrP3.Visible = false;
                PrP4.Visible = false;
                PrP5.Visible = false;
                PrP6.Visible = false;
                PrP7.Visible = false;
                PrP8.Visible = false;
                PrP9.Visible = false;
            }
        }

        public void SetPreview( string idProof) {
            PrRoomNo.Text = DropRoomNo.SelectedItem.Text;
            PrFullName.Text = FullName.Text;
            PrContactID.Text = ContactNoid.Text;
            PrAddressID.Text = AddressID.Text;
            PrNationality.Text = NationalityID.Text;
            PrOccapation.Text = OccupationID.Text;
            PrNoOfPerson.Text = DropNoOfPersonID.SelectedItem.Text;
            PrDateOfArival.Text = DateOfArivalID.Text;
            PrArivalFrom.Text = ArriverFromID.Text;
            PrPerpose.Text = TexPerposeOfVisitIDtBox1.Text;
            PrDuration.Text = DurationOfDayID.Text;
            PrAddProceding.Text = AddressToProcedingID.Text;
            PrVehicalNo.Text = VehicalNoID.Text;
            PrDateOfDeparture.Text = DateOFDpartureID.Text;
            PrP1Name.Text = PersonOne.Text;
            PrP1Age.Text = AgeOne.Text;
            PrP2Name.Text = PersonTwo.Text;
            PrP2Age.Text = AgeTwo.Text;
            PrP3Name.Text = PersonThree.Text;
            PrP3Age.Text = AgeThree.Text;
            PrP4Name.Text = PersonFour.Text;
            PrP4Age.Text = AgeFour.Text;
            PrP5Name.Text = PersonFive.Text;
            PrP5Age.Text = AgeFive.Text;
            PrP6Name.Text = PersonSix.Text;
            PrP6Age.Text = AgeSix.Text;
            PrP7Name.Text = PersonSeven.Text;
            PrP7Age.Text = AgeSeven.Text;
            PrP8Name.Text = PersonEight.Text;
            PrP8Age.Text = AgeEight.Text;
            PrP9Name.Text = PersonNine.Text;
            PrP9Age.Text = AgeNine.Text;
        }

        protected void PREVIEWButton_Click(object sender, EventArgs e)
        {

            if (FileUTexIdProofID.HasFile)
            {
                //create the path to save the file to

                string fileName = FileUTexIdProofID.FileName;

                //save the file to our local path

                FileUTexIdProofID.PostedFile.SaveAs(Server.MapPath("~/IdProof/" + fileName));
                createdFileName = "IdProof/" + fileName;
                ImgIDproof.ImageUrl = createdFileName;
                SetPreview(createdFileName);
            }

            modalContainer.Visible = true;
            gestDetails.Visible = false;
        }

        protected void CloseButton_Click(object sender, EventArgs e)
        {
            modalContainer.Visible = false;
            gestDetails.Visible = true;
        }

        protected void CancelBtn_Click(object sender, EventArgs e)
        {
            SearchGuest.Visible = true;
            GuestDetails.Visible = false;
        }

        protected void New_Guest_Click(object sender, EventArgs e)
        {
            SearchGuest.Visible = false;
            GuestDetails.Visible = true;
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {

        }



}
}
