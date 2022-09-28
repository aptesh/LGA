<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Advertise.aspx.cs" Inherits="SNLM_v0._00.Advertise" %>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Dancing+Script:wght@400;500;600;700&display=swap" rel="stylesheet">

    <title>Klassy Cafe - Restaurant HTML Template</title>

    <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.css">

    <link rel="stylesheet" href="assets/css/templatemo-klassy-cafe.css">

    <link rel="stylesheet" href="assets/css/owl-carousel.css">

    <link rel="stylesheet" href="assets/css/lightbox.css">

    </head>
    
    <body>
        
    
    <!-- Header -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- Header Logo -->
                        <a href="#" class="logo">
                            <img src="assets/images/Header-Logo.png" alt="lgo" />
                        </a>
                        <ul class="nav">
                            <li class="scroll-to-section"><a href="#top" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="#menu">Popular Destinations</a></li>
                            <li class="scroll-to-section"><a href="#reservation">Contact Us</a></li>
                            <li class="scroll-to-section"><a href="#about">About</a></li>
                            <asp:Label ID="HideAdmin" runat="server" Text="">
                            <li class="scroll-to-section"><a href="Dashboard.aspx">Admin</a></li>
                            </asp:Label> 
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                    </nav>
                </div>
            </div>
        </div>
    </header>
    
    <!-- Banner -->
    <div id="top">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8">
                    <div class="main-banner header-text">
                        <div class="Modern-Slider">
                          <!-- Item -->
                          <div class="item">
                            <div class="img-fill">
                                <img src="assets/images/slide-01.jpg" alt="">
                            </div>
                          </div>
                          <div class="item">
                            <div class="img-fill">
                                <img src="assets/images/slide-02.jpg" alt="">
                            </div>
                          </div>
                          <div class="item">
                            <div class="img-fill">
                                <img src="assets/images/slide-03.jpg" alt="">
                            </div>
                          </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4">
                    <div class="left-content">
                        <div class="inner-content">
                            <h4>Samarth Nivas</h4>
                            <h6>MTDC Guest House</h6>
                            <div class="main-white-button scroll-to-section">
                                <a href="#reservation">Make A Reservation</a>
                            </div>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>


    <!-- Menu -->
    <section class="section" id="menu">
        <div class="container">
            <div class="row">
                <div class="col-lg-4">
                    <div class="section-heading">
                        <h6>Popular Destinations</h6>
                        <h2>From historical cities to natural spiendours. come see the best of Ratnagiri!</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="menu-item-carousel">
            <div class="col-lg-12">
                <div class="owl-menu-item owl-carousel">
                    <div class="item">
                        <div class='card card1'>
                            <div class='info'>
                              <h1 class='title'>Chocolate Cake</h1>
                              <p class='description'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card2'>
                            <div class='info'>
                              <h1 class='title'>Klassy Pancake</h1>
                              <p class='description'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card3'>
                            <div class='info'>
                              <h1 class='title'>Tall Klassy Bread</h1>
                              <p class='description'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card4'>
                            <div class='info'>
                              <h1 class='title'>Blueberry </h1>
                              <p class='description'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card5'>
                            <div class='info'>
                              <h1 class='title'>Klassy Cup Cake</h1>
                              <p class='description'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <div class='card card3'>
                            <div class='info'>
                              <h1 class='title'>Klassic Cake</h1>
                              <p class='description'>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sedii do eiusmod teme.</p>
                              <div class="main-text-button">
                                  <div class="scroll-to-section"><a href="#reservation">Make Reservation <i class="fa fa-angle-down"></i></a></div>
                              </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Reservation/Contact Us -->
    <section class="section" id="reservation">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 align-self-center">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>Contact Us</h6>
                            <h2>Here You Can Make A Reservation Or make a call</h2>
                        </div>
                        <p><B style="font-size:18px">Dr. B. N. Sawant Road, Opp. New Bhaji Market Road,<br />Ratnagiri-415612 Maharastra(India)</B></p>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="phone">
                                    <i class="fa fa-phone"></i>
                                    <h4>Monile Numbers</h4>
                                    <span><a href="#">9422634217</a>&nbsp<b>/</b>&nbsp<a href="#">9422433717</a></span>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="message">
                                    <i class="fa fa-phone"></i>
                                    <h4>Phone Numbers</h4>
                                    <span><a href="#">02352-220932</a><br /></span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="contact-form">
                        <form id="contact" runat="server">
                            <div class="row">
                                <div class="col-lg-12">
                                    <h4>Room Booking</h4>
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label1" runat="server" Text="Name*" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="AddFullName" runat="server"></asp:TextBox>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label2" runat="server" Text="Contact No*" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="AddPhone" runat="server" TextMode="Phone"></asp:TextBox>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label3" runat="server" Text="From date*" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="DateofArrival" runat="server" TextMode="Date" placeholder="Date Of Arrival*"></asp:TextBox>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label4" runat="server" Text="To date*" ForeColor="Red"></asp:Label>
                                        <asp:TextBox ID="DateOfDeparture" runat="server" TextMode="Date" placeholder="Date of Departure*"></asp:TextBox>
                                    </fieldset>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label6" runat="server" Text="No of Ghuest*" ForeColor="Red"></asp:Label>
                                        <asp:DropDownList ID="DropDownList3" runat="server">
                                            <asp:ListItem Value="One">1</asp:ListItem>
                                            <asp:ListItem Value="Two">2</asp:ListItem>
                                            <asp:ListItem Value="Three">3</asp:ListItem>
                                            <asp:ListItem Value="Four">4</asp:ListItem>
                                            <asp:ListItem Value="Five">5</asp:ListItem>
                                            <asp:ListItem Value="Six">6</asp:ListItem>
                                            <asp:ListItem Value="Seven">7</asp:ListItem>
                                            <asp:ListItem Value="Eight">8</asp:ListItem>
                                            <asp:ListItem Value="Nine">9</asp:ListItem>
                                            <asp:ListItem Value="Ten">10</asp:ListItem>
                                            <asp:ListItem Value="Eleven">11</asp:ListItem>
                                            <asp:ListItem Value="Twelve">12</asp:ListItem>
                                        </asp:DropDownList>
                                    </fieldset>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label5" runat="server" Text="No of Room*" ForeColor="Red"></asp:Label>
                                        <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" >
                                            <asp:ListItem Value="One">1</asp:ListItem>
                                            <asp:ListItem Value="Two">2</asp:ListItem>
                                            <asp:ListItem Value="Three">3</asp:ListItem>
                                            <asp:ListItem Value="Four">4</asp:ListItem>
                                            <asp:ListItem Value="Five">5</asp:ListItem>
                                            <asp:ListItem Value="Six">6</asp:ListItem>
                                            <asp:ListItem Value="Seven">7</asp:ListItem>
                                            <asp:ListItem Value="Eight">8</asp:ListItem>
                                            <asp:ListItem Value="Nine">9</asp:ListItem>
                                            <asp:ListItem Value="Ten">10</asp:ListItem>
                                        </asp:DropDownList>
                                    </fieldset>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <fieldset>
                                        <asp:Label ID="Label8" runat="server" Text="Room Type*" ForeColor="Red"></asp:Label>
                                        <asp:DropDownList ID="DropDownList4" runat="server" OnSelectedIndexChanged="DropDownList4_SelectedIndexChanged">
                                            <asp:ListItem></asp:ListItem>
                                            <asp:ListItem Value="Ac">Ac</asp:ListItem>
                                            <asp:ListItem Value="NonAc">Non-Ac</asp:ListItem>
                                        </asp:DropDownList>
                                    </fieldset>
                                </div>
                                <div class="col-lg-6">
                                    <fieldset>
                                        <asp:Label ID="Label7" runat="server" Text="Room Rate*" ForeColor="Red"></asp:Label><br />
                                        <asp:Label ID="RoomRate" runat="server" Font-Bold="True" Font-Size="Large"></asp:Label>
                                    </fieldset>
                                </div>
                                <div class="col-lg-12">
                                    <asp:Button ID="AddChkAvilablity" runat="server" CssClass="btn btn-danger" Text="Check Avilablity" OnClick="AddChkAvilablity_Click" />
                                </div>

                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- About Us -->
    <section class="section" id="about">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="right-content">
                        <div class="thumb">
                            <a rel="nofollow" href="http://youtube.com"><i class="fa fa-play"></i></a>
                            <img src="assets/images/about-video-bg.jpg" alt="">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-md-6 col-xs-12">
                    <div class="left-text-content">
                        <div class="section-heading">
                            <h6>About Us</h6>
                            <h2>We Leave A Delicious Memory For You</h2>
                        </div>
                        <p>Klassy Cafe is one of the best <a href="https://templatemo.com/tag/restaurant" target="_blank" rel="sponsored">restaurant HTML templates</a> with Bootstrap v4.5.2 CSS framework. You can download and feel free to use this website template layout for your restaurant business. You are allowed to use this template for commercial purposes. <br><br>You are NOT allowed to redistribute the template ZIP file on any template donwnload website. Please contact us for more information.</p>
                        <div class="row">
                            <div class="col-4">
                                <img src="assets/images/about-thumb-01.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img src="assets/images/about-thumb-02.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img src="assets/images/about-thumb-03.jpg" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Footer -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-xs-12">
                    <div class="right-text-content">
                            <ul class="social-icons">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                                <li><a href="#"><i class="fa fa-instagram"></i></a></li>
                            </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="logo">
                        <a href="index.html"><img src="assets/images/Footer-Logo.png" alt="" /></a>
                    </div>
                </div>
                <div class="col-lg-5 col-xs-12">
                    <div class="left-text-content">
                        <p><B style="font-size:15px">Dr. B. N. Sawant Road, Opp. New Bhaji Market Road,
                            <br />Ratnagiri-415612 Maharastra(India)</B></p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <script src="assets/js/jquery-2.1.0.min.js"></script>
    <script src="assets/js/popper.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/accordions.js"></script>
    <script src="assets/js/datepicker.js"></script>
    <script src="assets/js/scrollreveal.min.js"></script>
    <script src="assets/js/waypoints.min.js"></script>
    <script src="assets/js/jquery.counterup.min.js"></script>
    <script src="assets/js/imgfix.min.js"></script> 
    <script src="assets/js/slick.js"></script> 
    <script src="assets/js/lightbox.js"></script> 
    <script src="assets/js/isotope.js"></script> 
    <script src="assets/js/custom.js"></script>
    <script>

        $(function () {
            var selectedClass = "";
            $("p").click(function () {
                selectedClass = $(this).attr("data-rel");
                $("#portfolio").fadeTo(50, 0.1);
                $("#portfolio div").not("." + selectedClass).fadeOut();
                setTimeout(function () {
                    $("." + selectedClass).fadeIn();
                    $("#portfolio").fadeTo(50, 1);
                }, 500);

            });
        });

    </script>
  </body>
</html>
