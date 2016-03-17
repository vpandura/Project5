<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Book Cheap Air Tickets, Domestic Flight Ticket Booking at Lowest Airfare on TicketEasy.</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">
        <script src="http://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        <link rel="icon" type="image/png" href="images/favicon.png">
        <style>
            @font-face {
                font-family: Myriad-Pro;
                src: url(fonts/MYRIADPRO-REGULAR.OTF);
            }
            * {
                font-family: Myriad-Pro;
            }
            .sign-in-container-top {
                border: 1px rgba(214,214,214,1.00) solid;
                background-color: rgba(214,214,214,0.3);
                border-bottom: none;
                border-top-left-radius: 10px;
                border-top-right-radius: 10px;
            }
            .sign-in-container-bottom {
                border: 1px rgba(214,214,214,1.00) solid;
                background-color: rgba(214,214,214,0.3);
                border-top: none;
                border-bottom-left-radius: 10px;
                border-bottom-right-radius: 10px;
                padding-bottom: 25px;
            }
            .sign-in-button {
                margin-top: 20px;
            }
            .create-account-button {
                margin-top: 15px;
            }
        </style>
    </head>

    <body>
        <header>
            <div class="navbar navbar-fixed-top" style="background-color:rgba(0,0,0,0.8);">
                <div class="container">
                    <div class="row">
                        <div class="navbar-header">
                            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                            <a href="Flight-Search.jsp"> <img src="images/logo.svg" width="50px" alt="TicketEasy-logo" style=" padding-top:8px;" class="navbar-left"></a>
                            <a href="index.jsp"><h1 class="navbar-brand" style="display:inline-block; margin-left:1px; margin-top:5px; color:rgba(255,255,255,0.2); font-family: 'Myriad-Pro'; font-size:
                                                    1.7em;">TicketEasy</h1></a>
                        </div>

                        <li class="dropdown btn btn-primary navbar-btn navbar-right" style="font-family:'Myriad-Pro'; margin-top:15px;">
                            <a class="dropdown-toggle" data-toggle="dropdown" href="#"style="color:rgba(255,255,255,1.00); text-decoration:none;"><span class="glyphicon glyphicon-user" style="color:rgba(255,255,255,1.00); text-decoration:none;"></span> &nbsp;Login &nbsp;<span class="glyphicon glyphicon-menu-down" style="color:rgba(255,255,255,1.00); text-decoration:none;"></span></a>

                            <ul class="dropdown-menu">
                                <li><a href="login.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Customer Login</a></li>
                                <li><a href="AgentLogin.jsp"><span class="glyphicon glyphicon-user"></span>&nbsp;&nbsp;Agent Login</a></li>
                            </ul>
                        </li>
                    </div>
                </div>
            </div>
    </header>
    <!-- Header -->

    <header style="margin-bottom:0px; position:absolute; top:auto; left:auto; width:100%;">
        <div style="background-image:url(images/flight-background.jpg); background-repeat:no-repeat; background-size:auto; height:750px;">
            <div class="container" style="padding-top:5%;">
                <h1 style="color:rgba(255,255,255,1.00); text-shadow:rgba(0,0,0,0.49) 1px 1px 2px; padding-left:50%;" class="text-center">Search Flights</h1>
            </div>
        </div>
    </header>

    <div class="container" style="padding-top:10%;">
        <div class="row">
            <div class="col-sm-6 col-sm-offset-6"  style="background-color:rgba(0,0,0,0.8); border-radius:5px; padding:2%; box-shadow:rgba(0,0,0,0.70) 1px 1px 10px">
                <ul class="nav nav-pills nav-justified" style="padding-bottom:5%;">
                    <li class="active"><a href="#Home" data-toggle="tab">One Way</a></li>
                    <li><a href="#About" data-toggle="tab">Round Trip</a></li>
                </ul>

                <div class="tab-content">
                    <div class="tab-pane active"  id="Home">
                        <br>
                        <br>
                        <form action="">
                            <div class="row" style="padding-bottom:5%;">
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Flying from</label>
                                        <input type="text" id="element-1" class="form-control" placeholder="Enter Starting Location">
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Flying to</label>
                                        <input type="text" id="element-1" class="form-control" placeholder="Enter Destination Location">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Departing</label>
                                        <input type="date" id="element-1" class="form-control" placeholder="Enter Starting Date">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row" style="padding-bottom:5%;">
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">No. of Flyers</label>
                                        <input type="number" id="element-1" class="form-control" min="1" max="7" placeholder="Enter number of flyers">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Preferred Class</label>
                                        <select id="element-1" class="form-control">
                                            <option>Economy</option>
                                            <option>Business</option>
                                            <option>First Class</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="reset" class="btn btn-danger" style="width:50%;">Reset</button>
                                </div>
                                <div class="col-sm-6">
                                    <button type="submit" class="btn btn-primary pull-right" style="width:50%;">Search</button>
                                </div>
                            </div>
                        </form>
                    </div>

                    <div class="tab-pane"  id="About">
                        <br>
                        <br>
                        <form action="">
                            <div class="row" style="padding-bottom:5%;">
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Flying from</label>
                                        <input type="text" id="element-1" class="form-control" placeholder="Enter Starting Location">
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Flying to</label>
                                        <input type="text" id="element-1" class="form-control" placeholder="Enter Destination Location">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Departing</label>
                                        <input type="date" id="element-1" class="form-control" placeholder="Enter Starting Date">
                                    </div>
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Returning</label>
                                        <input type="date" id="element-1" class="form-control" placeholder="Enter Returning Date">
                                    </div>
                                </div>
                            </div>
                            <br>
                            <br>
                            <div class="row" style="padding-bottom:5%;">
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">No. of Flyers</label>
                                        <input type="number" id="element-1" class="form-control" min="1" max="7" placeholder="Enter number of flyers">
                                    </div>
                                </div>
                                <div class="col-sm-6">
                                    <div class="form-group has-feedback">
                                        <label for="element-1" class="control-label" style="color:rgba(214,214,214,1.00);">Preferred Class</label>
                                        <select id="element-1" class="form-control">
                                            <option>Economy</option>
                                            <option>Business</option>
                                            <option>First Class</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-6">
                                    <button type="reset" class="btn btn-danger text-right" style="width:100%;">Reset</button>
                                </div>
                                <div class="col-sm-6">
                                    <button type="submit" class="btn btn-primary text-right" style="width:100%;">Search</button>
                                </div>
                            </div>
                        </form> 
                    </div>
                </div>
            </div>
        </div>  
    </div>

    <div class="container" style="margin-top:2%; margin-bottom:2%;">
        <section>
            <div class="page-header" id="feedback">
                <h2>Our Features.<small> &nbsp;Best prices than anyone</small></h2>
            </div>

            <div class="row">
                <div class="col-md-4">
                    <blockquote style="color:rgba(0,170,3,1.00); border-color:rgba(0,170,3,1.00)">
                        <span class="glyphicon glyphicon-ok-circle" style="font-size:32px;"></span>
                        <p><span style="color:rgba(44,105,158,1.00);">Search Airlines Worldwide</span></p>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote style="color:rgba(0,170,3,1.00); border-color:rgba(0,170,3,1.00)">
                        <span class="glyphicon glyphicon-ok-circle" style="font-size:32px;"></span>
                        <p><span style="color:rgba(44,105,158,1.00);">Best Price Guarantee</span></p>
                    </blockquote>
                </div>
                <div class="col-md-4">
                    <blockquote style="color:rgba(0,170,3,1.00); border-color:rgba(0,170,3,1.00)">
                        <span class="glyphicon glyphicon-ok-circle" style="font-size:32px;"></span>
                        <p><span style="color:rgba(44,105,158,1.00);">No TicketEasy Cancellation fee</span></p>
                    </blockquote>
                </div>

            </div><!-- End row -->
        </section>
    </div><!--End Container-->



    <footer style="position:static; bottom:0; left:0; width:100%;">
        
        <!-- call to action -->
        <section>
            <div class="well" style="margin-bottom:0px; width:100%; border-radius:0px;">
                <div class="container text-center">
                    <h3>Subscribe for News Feed</h3>
                    <p>Enter your name and email</p>

                    <form action="" class="form-inline">
                        <div class="form-group">
                            <label for="subscription">Subscribe</label>
                            <input type="text" class="form-control" id="subscription" placeholder="Your name">
                        </div>
                        <div class="form-group" style="padding-left:2%;">
                            <label for="email">Email address</label>
                            <input type="email" class="form-control" id="email" placeholder="Enter your Email">
                        </div>
                        <button type="submit" class="btn btn-primary" style="margin-left:2%;">Subscribe</button>
                        <hr>
                    </form>
                </div><!-- end Container-->

            </div><!-- end well-->
            <p class="text-center" style="font-size:1.2em; background-color:rgba(244,244,244,1.00); padding-top:1%; padding-bottom:1%; margin-bottom:0px; margin-top:0px;">Copyright &copy TicketEasy </p>
        </section><!-- Call to action -->

    </footer>
</body>
</html>
