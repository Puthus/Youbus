<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="PassWS.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <link rel="icon" type="image/png" href="Pics/YouBusLogo.png" />
    <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" />

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-1.12.0.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
    <link href="css/bootstrap.css" rel="stylesheet" />
    <script src="js/bootstrap.js"></script>
    <link href="css/HomePage.css" rel="stylesheet" />
    <script src="js/MPJavaScript.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <nav class="navbar navbar-default navbar-fixed-top">
                <div class="container">
                    <div class="topnav" id="myTopnav">
                        <a href="Home.aspx" id="logo"></a>
                        <a href="#">Search</a>
                        <a href="#contact">Contact</a>
                        <a href="#about">About</a>
                        <a href="javascript:void(0);" style="font-size: 15px;" class="icon" onclick="myFunction()">&#9776;</a>
                    </div>
                </div>
            </nav>

            <div class="jumbotron text-center">
                <div id="jumboTxt">
                    <h3 style="line-height: 2; margin: 20px;">the <strong style:"font-weight: 600;">1st</strong> Bus localisation app in Morocco<br /><strong style:"font-weight: 600;">YouBus</strong> brings all the infos you need right to the palm of your hand</h3>
                    <asp:Button ID="Button1" class="btn btn-large btn-primary" runat="server" Text="Download" />
                    <asp:Button ID="Button2" class="btn btn-large btn-primary" runat="server" Text="Join US" /><br />
                </div>
                
            </div>
            
            <!-- Container (Services Section) -->
            <div id="about" class="container-fluid text-center">
                <h2>FEATURES</h2>
                <h4>What we offer</h4>
                <br />
                <div class="row slideanim">
                    <div class="col-sm-4">
                        <div class="Ft">
                        <span class="FtImg"><img width="100%" src="Pics/icons/003-gps.png" /></span>
                        
                        <p style="margin: 30px 0 10px">Locate buses in real time</p>
                         </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="Ft ">
                        <span class="FtImg"><img width="100%" src="Pics/icons/001-bus.png" /></span>
                        
                        <p style="margin: 30px 0 10px">Get all infos on Trajectory, Buses, Stops...</p>
                        </div>
                    </div>
                    <div class="col-sm-4">
                        <div class="Ft">
                        <span class="FtImg"><img width="100%" src="Pics/icons/002-tablet.png" /></span>
                        
                        <p style="margin: 30px 0 10px">All on your Androis device</p>
                        </div>
                    </div>
                </div>
        </div>
                <br />
                <br />
            </div>




            <!-- Container (Contact Section) -->
            <div class="container-fluid text-center" id="contact" style="background-image: url(Pics/busStopOr.png); background-repeat: no-repeat; background-size: cover; background-attachment: fixed; margin: 0; padding: 20px 0; width: 100%">
                <h2>Contactez-nous</h2>
                
                <!-- Message -->
                <div class="row" >
                    <div class="col-md-6 col-sm-12" style="padding: 30px;  text-align:center;">
                        <asp:TextBox ID="TBName" class="ZT" runat="server" TextMode="SingleLine" placeholder="Your Name ..."></asp:TextBox><br />
                        <asp:TextBox ID="TBEmail" class="ZT" runat="server" TextMode="Email" placeholder="Aze@klm.xyz"></asp:TextBox><br />
                        <asp:TextBox ID="TBSubject" class="ZT" runat="server" TextMode="SingleLine" placeholder="It's about..."></asp:TextBox><br />
                        <asp:TextBox ID="TBMsg" class="ZT " runat="server" TextMode="MultiLine" placeholder="write message here..."></asp:TextBox><br />
                        <div style="text-align: center;">
                            <asp:Button ID="Btn" runat="server" class="btn btn-default" Text="Send" />
                        </div>
                    </div>

                    <!-- Map -->
                    <div class="col-md-6 col-sm-12" style="padding: 30px; text-align:center;">
                        <div id="map" style="width: 90%; height: 375px; background: lightgrey"></div>
                        <script>
                            function myMap() {
                                var X = new google.maps.LatLng(31.629633, -7.999959);
                                var mapOptions =
                                    {
                                        center: X, zoom: 5,
                                        mapTypeId: google.maps.MapTypeId.ROADMAP
                                    };
                                var map = new google.maps.Map(document.getElementById("map"), mapOptions);
                                var pin = new google.maps.Marker({ position: X });
                                pin.setMap(map);
                            }
                        </script>
                        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDL2mYbuo_BsYYA-U1hnmO5RLLVZZLi16Q&callback=myMap"></script>
                    </div>
                </div>
                </div>


            <!-- Footer -->

            <footer class="container-fluid text-center">
                <button onclick="topFunction()" id="Scroll-top" class="btn" title="Go to top" style="display:initial; background:none; font-size:larger"><span class="glyphicon glyphicon-chevron-up"></span></button>
                        <br />
                        <a href="#" class="fa fa-facebook"></a>
                        <a href="#" class="fa fa-github"></a>
                        <a href="#" class="fa fa-google-plus"></a>
                        <h5 style="color: wheat;">&copy; 2018 <span style="color: #fbe180;">YouBus</span> .All Right Researved.</h5>
            </footer>

            <!-- Scroll back to top -->
            
            <script>
                window.onscroll = function () { scrollFunction() };
                function scrollFunction() {
                    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
                        document.getElementById("Scroll-top").style.display = "block";
                    } else {
                        document.getElementById("Scroll-top").style.display = "none";
                    }
                }
                function topFunction() {
                    document.body.scrollTop = 0;
                    document.documentElement.scrollTop = 0;
                }
            </script>
    </form>
</body>
</html>
