<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Bills.aspx.cs" Inherits="SNLM_v0._00.Bills" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box" runat="server" id="gestBill" style="width: auto;">
                    <div class="right-side">
                        <div class="container">
        &nbsp;<!-------------------------------------
              form start here 
        --------------------------------------><div class="card border-primary">
                                <div class="card-header border-primary">
                                    <h5>GUEST BILL</h5>
                                </div>
                                <div class="card-body">


        <!-------------------------------------
            Row One (room No)
        -------------------------------------->

                                    <div class="form-row">
                                        <div class="form-group col-md-3">
                                            <div class="form-group">
                                                <!--Room No-->
                                                <asp:Label ID="BillRoomNoLabel" runat="server" Text="Room No."></asp:Label>
                                                <asp:DropDownList ID="BillDropRoomNo" runat="server" CssClass="form-control" OnSelectedIndexChanged="IndexChanged">
                                                    <asp:ListItem>choose Room</asp:ListItem>
                                                    <asp:ListItem>1</asp:ListItem>
                                                    <asp:ListItem>2</asp:ListItem>
                                                    <asp:ListItem>3</asp:ListItem>
                                                    <asp:ListItem>4</asp:ListItem>
                                                    <asp:ListItem>5</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>


        <!-------------------------------------
             Row Two (Name, contact, address, nationality, occupation)
        -------------------------------------->

                                    <div class="form-row">
                                        <div class="form-group col-md-6">
                                            <!--Full Name-->
                                            <asp:Label ID="FullNameLabe" Text="Full Name" runat="server"></asp:Label>
                                            <asp:TextBox ID="BillFullName" runat="server" CssClass="form-control" OnTextChanged="Page_Load"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <!--Offline Bill-->
                                            <asp:Label ID="BillOfflineLabel" Text="Offline Amount" runat="server"></asp:Label>
                                            <asp:TextBox ID="BillOfflineID" runat="server" CssClass="form-control" placeholder="Rs." OnTextChanged="Page_Load"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <!--Online Bill-->
                                            <asp:Label ID="BillOnlineLabel" Text="Online Amount" runat="server"></asp:Label>
                                            <asp:TextBox ID="BillOnlineID" runat="server" CssClass="form-control" placeholder="Rs." OnTextChanged="Page_Load"></asp:TextBox>
                                        </div>
                                        <div class="form-group col-md-6">
                                            <!--Bank Name-->
                                            <asp:Label ID="BillBankNameLabel" Text="Bank Name" runat="server"></asp:Label>
                                            <asp:DropDownList ID="BillBankName" runat="server" CssClass="form-control">
                                                <asp:ListItem>choose Bank</asp:ListItem>
                                                <asp:ListItem>Bank Of India</asp:ListItem>
                                                <asp:ListItem>Bank of Maharastra</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <!--Preview Button-->
                                <div class="card-footer border-primary text-right">
                                    <a href="#Preview">
                                        <asp:Button ID="PREVIEWButton" runat="server" Text="Preview" CssClass="btn btn-outline-primary" OnClick="PREVIEWButton_Click" />
                                    </a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


        <!-------------------------------------
             Bill Preview(whataver kay asel te)
        -------------------------------------->
        <div runat="server" class="modal-container" id="PrintBill" visible="false">
            <div class="container">
                <div class="card border-danger" style="width: 640px">
                    <div class="card-header">
                        <h4>Bill Preview</h4>
                    </div>
                    <div class="card-body border-danger" id="container">
                        <!-- Bill Table start here!-->
                        <table border="1" style="Height: 500px; width: 600px; background-color: #fff">
                            <tr>
                                <td colspan="3" style="text-align: center; line-height: 1px;">
                                    <h4><u>CASH MEMO</u></h4>
                                    <p style="font-size: 13px">Subject to Ratnagiri Jurisdiction</p>
                                    <div class="row">
                                        <div class="col">
                                            <h3 style="line-height: 15px; font-family:'Bodoni MT';">Samarth Nivas</h3>
                                            <h5>Bed & Breakfast</h5>
                                        </div>
                                        <div class="col">
                                            <div class="row">
                                                <div class="col-4">
                                                    <img src="images/mtdclogo.png" alt="logo" height="50" width="70" />
                                                </div>
                                                <div class="col-8" style="text-align: left; font-size: 12px">
                                                    <p></p>
                                                    <p>MTDC Registered under</p>
                                                    <p>Bed & Breakfast Scheme</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <h6 style="line-height: 15px; font-size: 13px">Dr. B. N. Sawant Road, Opp. New Bhaji Market, Ratnagir - 415612</h6>
                                    <h6 style="font-size: 13px">Ph. No. : 02352 - 220932, Cell : 9422634217, 9422433717</h6>
                                </td>
                            </tr>
                            <tr style="text-align: center;">
                                <td style="padding: 5px"><b>LODGING CHARGES</b></td>
                                <td style="padding: 5px; width: 80px;"><b>Rs.</b></td>
                                <td style="padding: 5px; width: 50px;"><b>ps.</b></td>
                            </tr>
                            <tr>
                                <td style="padding: 10px">
                                    <div class="row">
                                        <div class="col-3">
                                            <b>For</b>
                                        </div>
                                        <div class="col-6">
                                            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                            <b>Days</b>
                                        </div>
                                    </div><br />
                                    <div class="row">
                                        <div class="col-3">
                                            <b>From</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                            <b>at</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div><br />
                                    <div class="row">
                                        <div class="col-3">
                                            <b>To</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                            <b>at</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div><br />
                                    <div class="row">
                                        <div class="col-3">
                                            <b>Rs.</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                            <b>per day X</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                                        </div>
                                    </div><br />
                                    <div class="row">
                                        <div class="col-3">
                                            <b>Days</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                        </div>
                                        <div class="col-3">
                                        </div>
                                    </div><br />
                                    <div class="row">
                                        <div class="col-3">
                                            <b>Extra Person</b>
                                        </div>
                                        <div class="col-3">
                                            <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                            <b>X Rs.</b>&nbsp;&nbsp;<asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                                        </div>
                                        <div class="col-3">
                                            <b>Charges</b>
                                        </div>
                                    </div><br />
                                    L Tax @      %<br />
                                </td>
                                <td style="padding: 5px"></td>
                                <td style="padding: 5px"></td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; text-align: right">TOTAL
                                </td>
                                <td style="padding: 5px"></td>
                                <td style="padding: 5px"></td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; text-align: right">LESS ADVANCE IF ANY
                                </td>
                                <td style="padding: 5px"></td>
                                <td style="padding: 5px"></td>
                            </tr>
                            <tr>
                                <td style="padding: 5px; text-align: right">NET PAYMENT
                                </td>
                                <td></td>
                                <td></td>
                            </tr>
                            <tr>
                                <td colspan="3">
                                    <div class="row">
                                        <div class="col-9">
                                            Thank you!
                                        </div>
                                        <div class="col-3">
                                            E. & O. E.
                                        </div>
                                    </div>
                                    <br />
                                    <br />
                                    <div class="row">
                                        <div class="col-9">
                                            Reg. No. : 015<br />
                                            PTO
                                        </div>
                                        <div class="col-3">
                                            Manager
                                        </div>
                                    </div>
                                </td>
                            </tr>
                        </table>
                    </div>
                    <div class="card-footer border-danger text-right">
                        <!--Preview Save button-->
                        <button Class="btn btn-outline-success" OnClick="printbill('container');">PRINT</button>
                        <a href="#body">
                            <!--Preview Cancel Button-->
                            <asp:Button ID="PrintBillcancel" runat="server" Text="CANCEL" CssClass="btn btn-outline-primary" OnClick="PrintBillcancel_Click" />
                        </a>
                    </div>
                </div>
            </div>
        </div>
        <br />

        <!-------------------------------------
            Preview Tab
        -------------------------------------->

        <div runat="server" class="modal-container" id="BillContainer" visible="false">
            <div class="container">
                <div class="container">
                    <div class="card border-danger text">
                        <div class="card-header">
                            <h4>Preview</h4>
                        </div>

        <!-------------------------------------
            Preview content
        -------------------------------------->

                        <div class="card-body border-danger">
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Preview Room No.-->
                                    <b>
                                        <asp:Label ID="preRoomNoLabel" Text="Room No :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PreRoomNo" Text="" runat="server"></asp:Label>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="form-group col-md-6">
                                    <!--Preview Full Name-->
                                    <b>
                                        <asp:Label ID="PreFullNameLabel" Text="Guest Name :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PreFullName" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Offline payment-->
                                    <b>
                                        <asp:Label ID="PreOfflineLabel" Text="Offline Payment :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PreOffline" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Online Payment-->
                                    <b>
                                        <asp:Label ID="PreOnlineLabel" Text="Online Payment :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PreOnline" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Bank Name-->
                                    <b>
                                        <asp:Label ID="PrBankNameLabel" Text="Bank Name :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrBankName" Text="" runat="server"></asp:Label>
                                </div>
                                <div class="form-group col-md-6">
                                    <!--Preview Total Amount-->
                                    <b>
                                        <asp:Label ID="PrTotalLabel" Text="Total Amount :" runat="server"></asp:Label></b>
                                    <asp:Label ID="PrTotal" Text="" runat="server"></asp:Label>
                                </div>
                            </div>
                        </div>

        <!-------------------------------------
            Preview Buttons
        -------------------------------------->

                        <div class="card-footer border-danger text-right">
                            <!--Preview Save button-->
                            <asp:Button ID="SAVEButton" runat="server" Text="SAVE" CssClass="btn btn-outline-success" OnClick="SAVEButton_Click" />
                            <a href="#body">
                                <!--Preview Cancel Button-->
                                <asp:Button ID="CancelPreview" runat="server" Text="CANCEL" CssClass="btn btn-outline-primary" OnClick="CancelPreview_Click" />
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <br />
        <div class="sales-boxes">
            <div class="recent-sales box" style="height:500px; overflow-y: scroll;">
                <asp:GridView ID="GridView1" CssClass="Grid" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="RoomNo" HeaderText="RoomNo" SortExpression="RoomNo" />
                        <asp:BoundField DataField="BillAmount" HeaderText="BillAmount" SortExpression="BillAmount" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:SNLMConnectionString %>" SelectCommand="SELECT [Name], [RoomNo], [BillAmount] FROM [Bills]"></asp:SqlDataSource>
            </div>
            <div class="top-sales box" style="height: 300px;">
                <div class="title">Current Guests</div>
                <ul class="top-sales-details">
                    <li>
                        <a href="#">
                            <span class="product"><b>Guest Names</b></span>
                        </a>
                        <span class="price"><b>Rm. No.</b></span>
                    </li>
                    <li>
                        <a href="#">
                            <span class="product">Guest Name Room 1</span>
                        </a>
                        <span class="price">01</span>
                    </li>
                    <li>
                        <a href="#">
                            <span class="product">Guest Name Room 2</span>
                        </a>
                        <span class="price">02</span>
                    </li>
                    <li>
                        <a href="#">
                            <span class="product">Guest Name Room 3</span>
                        </a>
                        <span class="price">03</span>
                    </li>
                    <li>
                        <a href="#">
                            <span class="product">Guest Name Room 4</span>
                        </a>
                        <span class="price">04</span>
                    </li>
                    <li>
                        <a href="#">
                            <span class="product">Guest Name Room 5</span>
                        </a>
                        <span class="price">05</span>
                    </li>
                </ul>
            </div>
        </div>
        <br />


        </div>
    </section>
</asp:Content>
