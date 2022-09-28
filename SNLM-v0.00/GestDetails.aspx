<%@ Page Title="Guest_Details" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="GestDetails.aspx.cs" Inherits="SNLM_v0._00.GestDetails" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <!-- starting section -->
        <div runat="server" id="gestDetails" class="home-content">
            <!-- main bodya -->
            <div class="overview-boxes">
                <div class="box" style="width: auto;">
                    <div class="right-side">
                        <div id="SearchGuest" class="card border-primary" runat="server" visible="true">

                            <div class="card-header bg-transparent border-primary"><h4>Guest / New Guest </h4>
                                <p>&nbsp;</p></div>

                            <div class="card-header bg-transparent border-primary">
                                <h4>Guest / New Guest</h4>
                            </div>
                            <div class="card-body">
                                <div class="row">
                                    <div class="col-9">
                                        <div class="input-group mb-3">
                                            <asp:TextBox ID="TextBox1" CssClass="form-control" runat="server" placeholder="Search Guest.........."></asp:TextBox>
                                            <div class="input-group-append">
                                                <asp:Button ID="SearchBtn" CssClass="btn btn-outline-primary" runat="server" Text="Search Guest" OnClick="SearchBtn_Click" />
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-3 text-center">
                                        <asp:Button ID="New_Guest" CssClass="btn btn-outline-success" runat="server" Text="New Guest" OnClick="New_Guest_Click" />
                                    </div>
                                </div>
                                <br />
                                <asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1">
                                    <Columns>
                                        <asp:BoundField DataField="CustomerId" HeaderText="CustomerId" InsertVisible="False" ReadOnly="True" SortExpression="CustomerId" />
                                        <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
                                        <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                                        <asp:BoundField DataField="ContactNo" HeaderText="ContactNo" SortExpression="ContactNo" />
                                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                        <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                                        <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                                        <asp:BoundField DataField="NoOfPerson" HeaderText="NoOfPerson" SortExpression="NoOfPerson" />
                                        <asp:BoundField DataField="DateOfArival" HeaderText="DateOfArival" SortExpression="DateOfArival" />
                                        <asp:BoundField DataField="ArrivedFrom" HeaderText="ArrivedFrom" SortExpression="ArrivedFrom" />
                                        <asp:BoundField DataField="PurposrOfVisit" HeaderText="PurposrOfVisit" SortExpression="PurposrOfVisit" />
                                        <asp:BoundField DataField="DurationOfDay" HeaderText="DurationOfDay" SortExpression="DurationOfDay" />
                                        <asp:BoundField DataField="AddressToProceeding" HeaderText="AddressToProceeding" SortExpression="AddressToProceeding" />
                                        <asp:BoundField DataField="IdProof" HeaderText="IdProof" SortExpression="IdProof" />
                                        <asp:BoundField DataField="VehicalNo" HeaderText="VehicalNo" SortExpression="VehicalNo" />
                                        <asp:BoundField DataField="DateOfDeparture" HeaderText="DateOfDeparture" SortExpression="DateOfDeparture" />
                                        <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    </Columns>
                                </asp:GridView>
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNLMConnectionString %>" SelectCommand="SELECT * FROM [CustomerDetails]"></asp:SqlDataSource>
                            </div>
                        </div>

                        <!--  form start here  -->

                        <div id="GuestDetails" class="card border-primary" runat="server" visible="false">
                            <div class="card-header border-primary">
                                <div class="row">
                                    <div class="col-6">
                                        <h5>GUEST DETAILS</h5>
                                    </div>
                                    <div class="col-6">
                                        <div style="text-align: right;" runat="server">
                                            <b>
                                                <asp:Button ID="CancelBtn" Style="border-radius: 50%; font-size: 15px;" CssClass="btn btn-outline-danger" runat="server" Text="X" OnClick="CancelBtn_Click" /></b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">

                                <!-- Row One (room No) -->

                                <div class="form-row">
                                    <div class="form-group col-md-3">
                                        <div class="form-group">
                                            <!--Room No.-->
                                            <asp:Label ID="Label1" runat="server" Text="Room No."></asp:Label>
                                            <asp:DropDownList ID="DropRoomNo" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose one</asp:ListItem>
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                                <asp:ListItem>4</asp:ListItem>
                                                <asp:ListItem>5</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <!-- Row Two (Name, contact, address, nationality, occupation) -->

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <!--Full Name-->
                                        <asp:Label ID="FullNameLabe" Text="Full Name" runat="server"></asp:Label>
                                        <asp:TextBox ID="FullName" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Contact Number-->
                                        <asp:Label ID="ContactNoLabel" Text="Mobile/Phone No." runat="server"></asp:Label>
                                        <asp:TextBox ID="ContactNoid" runat="server" CssClass="form-control" TextMode="Phone"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <!--Address-->
                                        <asp:Label ID="AddressLabel" Text="Address" runat="server"></asp:Label>
                                        <asp:TextBox ID="AddressID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Nationality-->
                                        <asp:Label ID="NationalityLabel" Text="Nationality" runat="server"></asp:Label>
                                        <asp:TextBox ID="NationalityID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Occupation-->
                                        <asp:Label ID="OccupationLabel" Text="Servie or Bussiness" runat="server"></asp:Label>
                                        <asp:TextBox ID="OccupationID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                </div>


                                <!-- Row Three -->

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <div class="form-group">
                                            <!--No of Persons-->
                                            <asp:Label ID="DropNoOfPersonLabel" runat="server" Text="No Of Person"></asp:Label>
                                            <asp:DropDownList ID="DropNoOfPersonID" runat="server" CssClass="form-control" AutoPostBack="True" OnSelectedIndexChanged="DropNoOfPersonID_Changed">
                                                <asp:ListItem Text="1" Value="One"></asp:ListItem>
                                                <asp:ListItem Text="2" Value="Two"></asp:ListItem>
                                                <asp:ListItem Text="3" Value="Three"></asp:ListItem>
                                                <asp:ListItem Text="4" Value="Four"></asp:ListItem>
                                                <asp:ListItem Text="5" Value="Five"></asp:ListItem>
                                                <asp:ListItem Text="6" Value="Six"></asp:ListItem>
                                                <asp:ListItem Text="7" Value="Seven"></asp:ListItem>
                                                <asp:ListItem Text="8" Value="Eight"></asp:ListItem>
                                                <asp:ListItem Text="9" Value="Nine"></asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <div class="form-row">
                                            <div class="form-group col-md-8">
                                                <!--Person No 1-->
                                                <asp:Label ID="personLabel1" Text="Person 1" runat="server"></asp:Label>
                                                <asp:TextBox ID="PersonOne" runat="server" CssClass="form-control" Placeholder="Person 1"></asp:TextBox>
                                            </div>
                                            <div class="form-group col-md-4">
                                                <!--Age No 1-->
                                                <asp:Label ID="AgeLabel1" Text="age" runat="server"></asp:Label>
                                                <asp:TextBox ID="AgeOne" runat="server" CssClass="form-control" Placeholder="Age"></asp:TextBox>
                                            </div>
                                        </div>

                                         <!-------------------------------------- 
                                            From person "two" to person "Nine" Name and Age Id 
                                        -------------------------------------->

                                        <div runat="server" id="Person2" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 2-->
                                                    <asp:TextBox ID="PersonTwo" runat="server" CssClass="form-control" Placeholder="Person 2"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 2-->
                                                    <asp:TextBox ID="AgeTwo" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person3" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 3-->
                                                    <asp:TextBox ID="PersonThree" runat="server" CssClass="form-control" Placeholder="Person 3"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 3-->
                                                    <asp:TextBox ID="AgeThree" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person4" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 4-->
                                                    <asp:TextBox ID="PersonFour" runat="server" CssClass="form-control" Placeholder="Person 4"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 4-->
                                                    <asp:TextBox ID="AgeFour" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person5" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 5-->
                                                    <asp:TextBox ID="PersonFive" runat="server" CssClass="form-control" Placeholder="Person 5"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 5-->
                                                    <asp:TextBox ID="AgeFive" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person6" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 6-->
                                                    <asp:TextBox ID="PersonSix" runat="server" CssClass="form-control" Placeholder="Person 6"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 6-->
                                                    <asp:TextBox ID="AgeSix" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person7" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 7-->
                                                    <asp:TextBox ID="PersonSeven" runat="server" CssClass="form-control" Placeholder="Person 7"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 7-->
                                                    <asp:TextBox ID="AgeSeven" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person8" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 8-->
                                                    <asp:TextBox ID="PersonEight" runat="server" CssClass="form-control" Placeholder="Person 8"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 8-->
                                                    <asp:TextBox ID="AgeEight" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="Person9" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-8">
                                                    <!--Person 9-->
                                                    <asp:TextBox ID="PersonNine" runat="server" CssClass="form-control" Placeholder="Person 9"></asp:TextBox>
                                                </div>
                                                <div class="form-group col-md-4">
                                                    <!--Age 9-->
                                                    <asp:TextBox ID="AgeNine" runat="server" CssClass="form-control" Placeholder="Age" TextMode="Number"></asp:TextBox>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                                <!-------------------------------------- 
                                    Row Three (Arrival from, perpose of visit, date of arival, address to proceding, departure, duration vehical no, id proof) 
                                -------------------------------------->

                                <div class="form-row">
                                    <div class="form-group col-md-6">
                                        <!--Arriver from-->
                                        <asp:Label ID="ArriverFromLabel" Text="Arriver From" runat="server"></asp:Label>
                                        <asp:TextBox ID="ArriverFromID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Perpose of Visit-->
                                        <asp:Label ID="PerposeOfVisitLabe" Text="Perpose Of Visit" runat="server"></asp:Label>
                                        <asp:TextBox ID="TexPerposeOfVisitIDtBox1" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Date of Arrival-->
                                        <asp:Label ID="DateOfArivalLabel" Text="Date of Arival" runat="server"></asp:Label>
                                        <asp:TextBox ID="DateOfArivalID" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Date of Departure-->
                                        <asp:Label ID="DateOFDpartureLabel" Text="Date of Dparture" runat="server"></asp:Label>
                                        <asp:TextBox ID="DateOFDpartureID" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-12">
                                        <!--Address To Proceding-->
                                        <asp:Label ID="AddressToProcedingLabel" Text="Address To Proceding" runat="server"></asp:Label>
                                        <asp:TextBox ID="AddressToProcedingID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Duration Of Day-->
                                        <asp:Label ID="DurationOfDayLabel" Text="Duration Of Day" runat="server"></asp:Label>
                                        <asp:TextBox ID="DurationOfDayID" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Vehica No-->
                                        <asp:Label ID="VehicalNoLabel" Text="Vehical No." runat="server"></asp:Label>
                                        <asp:TextBox ID="VehicalNoID" runat="server" CssClass="form-control"></asp:TextBox>
                                    </div>
                                    <div class="form-group col-md-6">
                                        <!--Poto Id-->
                                        <asp:Label ID="IdProofLabel" Text="Id Proof(upload PhotoId)" runat="server"></asp:Label>
                                        <asp:FileUpload ID="FileUTexIdProofID" CssClass="form-control-file" runat="server" />
                                    </div>
                                </div>
                            </div>

                            <!-------------------------------------
                                Preview Button
                            -------------------------------------->

                            <div class="card-footer border-primary text-right">
                                <asp:Button ID="PREVIEWButton" runat="server" Text="Preview" CssClass="btn btn-outline-primary" OnClick="PREVIEWButton_Click" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-------------------------------------
            Preview Tab
        -------------------------------------->


        <div runat="server" class="modal-container" id="modalContainer" visible="false">
            <br />
            <div class="container">
                <div class="container">
                    <div class="card border-danger text">
                        <div class="card-header border-danger">
                            <h4>Preview</h4>
                        </div>

                        <!-------------------------------------
                            Preview content
                        -------------------------------------->

                        <div class="card-body border-primary">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Preview Room No.-->
                                    <b>
                                        <asp:Label ID="PrRoomNoLabel" Text="Room Number :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrRoomNo" Text="" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Preview Room No.-->
                                    <b>
                                        <asp:Label ID="PrFullNameLabel" Text="Full Name :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrFullName" Text="" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Preview Contact No.-->
                                    <b>
                                        <asp:Label ID="PrContactLabel" Text="Mobile/Phone No. :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrContactID" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-12">
                                    <!--Preview Address-->
                                    <b>
                                        <asp:Label ID="PrAddressLabel" Text="Address :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrAddressID" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Nationality-->
                                    <b>
                                        <asp:Label ID="PrNationalityLabel" Text="Nationality :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrNationality" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Occupation-->
                                    <b>
                                        <asp:Label ID="PrOccapationLabel" Text="Servie or Bussiness :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrOccapation" Text="" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Preview No OF Person-->
                                    <b>
                                        <asp:Label ID="PrNoOfPersonLabel" Text="Persons :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrNoOfPerson" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <div class="form-row">
                                        <div class="form-group col-md-10">
                                            <!--Preview Person 1-->
                                            <b>
                                                <asp:Label ID="PrP1NameLabel" Text="Person :" runat="server"></asp:Label></b><br />
                                            <asp:Label ID="PrP1Name" Text="" runat="server"></asp:Label>
                                        </div>
                                        <div class="form-group col-md-2">
                                            <!--Preview Age 1-->
                                            <b>
                                                <asp:Label ID="PrP1AgeLabel" Text="Age :" runat="server"></asp:Label></b><br />
                                            <asp:Label ID="PrP1Age" Text="" runat="server"></asp:Label>
                                        </div>
                                    </div>

                                        <div id="PrP2" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP2Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP2Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP3" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP3Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP3Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP4" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP4Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP4Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP5" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP5Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP5Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP6" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP6Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP6Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP7" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP7Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP7Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP8" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP8Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP8Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                        <div id="PrP9" runat="server" visible="false">
                                            <div class="form-row">
                                                <div class="form-group col-md-10">
                                                    <!--Preview Person 2-->
                                                    <asp:Label ID="PrP9Name" Text="" runat="server"></asp:Label>
                                                </div>
                                                <div class="form-group col-md-2">
                                                    <!--Preview Age 2-->
                                                    <asp:Label ID="PrP9Age" Text="" runat="server"></asp:Label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Arriver from-->
                                    <b>
                                        <asp:Label ID="PrArivalFromLabel" Text="Arriver From :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrArivalFrom" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Perpose of Visit-->
                                    <b>
                                        <asp:Label ID="PrPerposeLabel" Text="Perpose Of Visit :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrPerpose" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Date of Arrival-->
                                    <b>
                                        <asp:Label ID="PrDateOfArivalLabel" Text="Date Of Arival :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrDateOfArival" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Date of Departure-->
                                    <b>
                                        <asp:Label ID="PrDateOfDepartureLabel" Text="Date Of Departure :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrDateOfDeparture" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-12">
                                    <!--Preview Address-->
                                    <b>
                                        <asp:Label ID="PrAddProcedingLabel" Text="Address To Proceding :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrAddProceding" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Duration-->
                                    <b>
                                        <asp:Label ID="PrDurationLabel" Text="Duration Of Day :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrDuration" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Vehical No-->
                                    <b>
                                        <asp:Label ID="PrVehicalNOLabel" Text="Vehical No :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrVehicalNo" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Prevew Photo Id-->
                                    <b>
                                        <asp:Label ID="PrIdProofLabel" Text="Id Proof :" runat="server"></asp:Label></b>
                                    <asp:Image ID="ImgIDproof" runat="server" Height="100px" Width="180px"></asp:Image>

                                    <asp:Label ID="PrIdProof" Text="" runat="server"></asp:Label>
                                    <!-- Tuch add kar kay te mala nay mahit @SUMIT -->

                                </div>
                            </div>
                           </div>
                        </div>

                        <!-------------------------------------
                            Preview Buttons
                        -------------------------------------->

                        <div class="card-footer border-danger text-right">
                            <!--Save To Database Button-->
                            <asp:Button ID="SAVEButton" runat="server" Text="SAVE" CssClass="btn btn-outline-success" OnClick="SAVEButton_Click" />

                            <a href="#PreviewButton">
                                <asp:Button ID="CloseButton" runat="server" CssClass="btn btn-outline-primary" Text="CLOSE" OnClick="CloseButton_Click" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        <br />
    </section>

</asp:Content>
