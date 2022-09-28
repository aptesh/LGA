<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="SNLM_v0._00.Reports" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box" style="width: 100%;">
                    <div class="right-side" style="width: 100%;">

                        <!-------------------------------------
              form start here 
        -------------------------------------->
                        
                        <div class="container">
                            <div class="card border-primary">
                                <div class="card-header border-primary">
                                    <h5>REPORTS</h5>
                                </div>
                                <div class="card-body">

                                    <!-------------------------------------
            Select date (From date 2 to date)
        -------------------------------------->

                                    <div class="form-row md-12">
                                        <div class="form-group col-md-6">
                                            <!--From Date-->
                                            <asp:Label ID="RepFromDateLabel" Text="From Date" runat="server"></asp:Label>
                                            <asp:TextBox ID="RepFromDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <!--To Date-->
                                            <asp:Label ID="RepToDateLabel" Text="To Date" runat="server"></asp:Label>
                                            <asp:TextBox ID="RepToDate" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-------------------------------------
            Select dropdown (select Report Type)
        -------------------------------------->

                                    <div class="form-row md-12">
                                        <div class="form-group col-md-6">
                                            <!--Select report type dropdown-->
                                            <asp:Label ID="BillRoomNoLabel" for="BillDropRoomNo" runat="server" Text="Report Type"></asp:Label>
                                            <asp:DropDownList ID="BillDropRoomNo" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose Report</asp:ListItem>
                                                <asp:ListItem>Total Report</asp:ListItem>
                                                <asp:ListItem>Online/offline report</asp:ListItem>
                                                <asp:ListItem>remaining report</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>

                                <!-------------------------------------
            Report Buttons (Search & Export to Excel)
        -------------------------------------->

                                <div class="card-footer border-primary text-right">
                                    <asp:Button ID="RepExport" runat="server" Text="Export To Excel" CssClass="btn btn-outline-success" />
                                    <asp:Button ID="RepSearch" runat="server" Text="SEARCH" CssClass="btn btn-outline-primary" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <div class="sales-boxes" style="width: auto;">
                <div class="recent-sales box" style="height:50%; width: 100%; overflow-x: scroll; overflow-y: scroll;">
                            <asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerId" DataSourceID="SqlDataSource1" >
                                <Columns>
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    <asp:BoundField DataField="RoomNo" HeaderText="Room No" SortExpression="RoomNo" />
                                    <asp:BoundField DataField="CustomerName" HeaderText="Guest Name" SortExpression="CustomerName" />
                                    <asp:BoundField DataField="ContactNo" HeaderText="Contact No" SortExpression="ContactNo" />
                                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                    <asp:BoundField DataField="Nationality" HeaderText="Nationality" SortExpression="Nationality" />
                                    <asp:BoundField DataField="Occupation" HeaderText="Occupation" SortExpression="Occupation" />
                                    <asp:BoundField DataField="NoOfPerson" HeaderText="No Of Person" SortExpression="NoOfPerson" />
                                    <asp:BoundField DataField="DateOfArival" HeaderText="Date Of Arival" SortExpression="DateOfArival" />
                                    <asp:BoundField DataField="ArrivedFrom" HeaderText="Arrived From" SortExpression="ArrivedFrom" />
                                    <asp:BoundField DataField="PurposrOfVisit" HeaderText="Purposr Of Visit" SortExpression="PurposrOfVisit" />
                                    <asp:BoundField DataField="DurationOfDay" HeaderText="Duration Of Day" SortExpression="DurationOfDay" />
                                    <asp:BoundField DataField="AddressToProceeding" HeaderText="Address To Proceeding" SortExpression="AddressToProceeding" />
                                    <asp:BoundField DataField="IdProof" HeaderText="Id Proof" SortExpression="IdProof" />
                                    <asp:BoundField DataField="VehicalNo" HeaderText="Vehical No" SortExpression="VehicalNo" />
                                    <asp:BoundField DataField="DateOfDeparture" HeaderText="Date Of Departure" SortExpression="DateOfDeparture" />
                                </Columns>
                                
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNLMConnectionString %>" SelectCommand="SELECT * FROM [CustomerDetails]"></asp:SqlDataSource>
                        </div>
            </div><br />
        </div>


    </section>

</asp:Content>
