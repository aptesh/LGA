<%@ Page Title="Dashboard" Language="C#" MasterPageFile="~/AdminMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="SNLM_v0._00.Dashboard" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="cnt-section">
        <div class="home-content">
            <div class="overview-boxes">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 01</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomOneLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomOneLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Dashboard</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 02</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomTwoLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomTwoLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Up from yesterday</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 03</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomThreeLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomThreeLockButton_Click"/>
                        </div>
                        <div class="indicator">
                            <span class="text">Up from yesterday</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 04</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomFourLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomFourLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Down From Today</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 05</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomfiveLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomfiveLockButton_Click" BackColor="" />
                        </div>
                        <div class="indicator">
                            <span class="text">Down From Today</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="overview-boxes" runat="server" visible="true">
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 06</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomSixLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomSixLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Dashboard</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 07</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomSevenLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomSevenLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Up from yesterday</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 08</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomEightLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomEightLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Up from yesterday</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 09</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomNineLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomNineLockButton_Click" />
                        </div>
                        <div class="indicator">
                            <span class="text">Down From Today</span>
                        </div>
                    </div>
                </div>
                <div class="box">
                    <div class="right-side">
                        <div class="box-topic">Room 10</div>
                        <div class="room-lockbtn">
                            <asp:Button ID="RoomTenLockButton" CssClass="btn btn-outline-primary" runat="server" Text="Lock In" OnClick="RoomTenLockButton_Click"  />
                        </div>
                        <div class="indicator">
                            <span class="text">Down From Today</span>
                        </div>
                    </div>
                </div>
            </div>

            <div class="sales-boxes">
                <div class="recent-sales box">
                    <div class="title">Recent Guest</div>
                    <div class="sales-details">
                        <ul class="details">
                            <li class="topic">Date</li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                            <li><a href="#">02 Jan 2021</a></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Guest</li>
                            <li><a href="#">Alex Doe</a></li>
                            <li><a href="#">David Mart</a></li>
                            <li><a href="#">Roe Parter</a></li>
                            <li><a href="#">Diana Penty</a></li>
                            <li><a href="#">Martin Paw</a></li>
                            <li><a href="#">Doe Alex</a></li>
                            <li><a href="#">Aiana Lexa</a></li>
                            <li><a href="#">Rexel Mags</a></li>
                            <li><a href="#">Tiana Loths</a></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Arrived From</li>
                            <li><a href="#">Delivered</a></li>
                            <li><a href="#">Pending</a></li>
                            <li><a href="#">Returned</a></li>
                            <li><a href="#">Delivered</a></li>
                            <li><a href="#">Pending</a></li>
                            <li><a href="#">Returned</a></li>
                            <li><a href="#">Delivered</a></li>
                            <li><a href="#">Pending</a></li>
                            <li><a href="#">Delivered</a></li>
                        </ul>
                        <ul class="details">
                            <li class="topic">Bill</li>
                            <li><a href="#">204.98</a></li>
                            <li><a href="#">24.55</a></li>
                            <li><a href="#">25.88</a></li>
                            <li><a href="#">170.66</a></li>
                            <li><a href="#">56.56</a></li>
                            <li><a href="#">44.95</a></li>
                            <li><a href="#">67.33</a></li>
                            <li><a href="#">23.53</a></li>
                            <li><a href="#">46.52</a></li>
                        </ul>
                    </div>
                </div>
                <div class="top-sales box" style="height: auto;">
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
                    <ul class="top-sales-details" runat="server" visible="true">
                        <li>
                            <a href="#">
                                <span class="product">Guest Name Room 6</span>
                            </a>
                            <span class="price">06</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Guest Name Room 7</span>
                            </a>
                            <span class="price">07</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Guest Name Room 8</span>
                            </a>
                            <span class="price">08</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Guest Name Room 9</span>
                            </a>
                            <span class="price">09</span>
                        </li>
                        <li>
                            <a href="#">
                                <span class="product">Guest Name Room 10</span>
                            </a>
                            <span class="price">10</span>
                        </li>
                    </ul>
                </div>
            </div><br />
        </div>
    </section>
</asp:Content>
