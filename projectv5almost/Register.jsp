<!doctype html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>Book Cheap Air Tickets, Domestic Flight Ticket Booking at Lowest Airfare on TicketEasy.</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css" integrity="sha512-dTfge/zgoMYpP7QbHy4gWMEGsbsdZeCXz7irItjcC3sPUFtf0kuFbDz/ixG7ArTxmDjLXDmezHubeNikyKGVyQ==" crossorigin="anonymous">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css" integrity="sha384-aUGj/X2zp5rLCbBxumKTCw2Z50WgIr1vs/PFN4praOTvYXWlVyh2UtNUU0KAUhAX" crossorigin="anonymous">
        <style>
            @font-face {
                font-family: Myriad-Pro;
                src: url(fonts/MYRIADPRO-REGULAR.OTF);
            }
            *{
                font-family:Myriad-Pro;
            }
            .sign-in-container-top {
                border: 1px rgba(214,214,214,1.00) solid;
                background-color: rgba(214,214,214,0.3);
                border-radius: 10px;
                border-radius: 10px;
                padding-bottom: 25px;
                margin-bottom:5%;
            }
            .sign-in-container-bottom {
                border: 1px rgba(214,214,214,1.00) solid;
                background-color: rgba(0,0,0,0.05);
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
            <div class="navbar navbar-default navbar-fixed-top navbar-inverse">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#example"> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
                        <img src="images/logo.svg" width="50px" alt="TicketEasy-logo" style=" padding-top:8px;" class="navbar-left">
                        <h1 class="navbar-brand" style="display:inline-block; margin-left:1px; margin-top:5px; color:rgba(255,255,255,0.2); font-family: 'Myriad-Pro'; font-size:
                            1.7em;">TicketEasy</h1>
                    </div>
                    <div class="collpase navbar-collapse" id=""> <a class="btn btn-primary navbar-btn navbar-right" style="margin-top:15px; font-family:'Myriad-Pro';">My Account &nbsp;<span class="glyphicon glyphicon-menu-down"></span></a> </div>
                </div>
            </div>
        </header>
        <!-- Header --> 

        <!-- Register Block -->
        <div class="container" id="sign-in-container" style="margin-top:5%">
            <div class="row">
                <div class="col-md-6 col-md-offset-3 sign-in-container-top">
                    <h1 class="text-center">Register</h1>
                    <hr>
                    <form action="CustomerRegistrationStatus.jsp" method="post">
                        <div class="form-group col-md-10 col-md-offset-1" >
                            <label class="control-label text-center" for="firstname" >First Name</label>
                            <input type="text"  id="firstname" class="form-control" name="firstname">
                        </div>
                        <div class="form-group col-md-10 col-md-offset-1" >
                            <label class="control-label text-center" for="lastname" >Last Name</label>
                            <input type="text"  id="lastName" class="form-control" name="lastname">
                            <br>
                            <hr>
                        </div>
                        <div class="form-group col-md-10 col-md-offset-1" >
                            <label class="control-label text-center" for="emailaddress" >Email Address</label>
                            <input type="text"  id="emailaddress" class="form-control" name="emailaddress">
                        </div>
                        <div class="form-group col-md-10 col-md-offset-1" >
                            <label class="control-label text-center" for="phonenumber" >Phone Number</label>
                            <input type="text"  id="phonenumber" class="form-control" name="phonenumber">
                            <br>
                            <hr>
                        </div>
                        <div class="form-group col-md-10 col-md-offset-1" >
                            <label class="control-label text-center" for="username" >Username</label>
                            <input type="text"  id="username" class="form-control" name="username">
                        </div>
                        <div class="form-group col-md-10 col-md-offset-1"  >
                            <label class="control-label text-center" for="username" >Password</label>
                            <input type="password"  id="password" class="form-control" name="password">
                        </div>
                        <input type="submit" class="btn btn-danger col-md-6 col-md-offset-3 sign-in-button" value="Register">
                    </form>
                </div>
            </div>
        </div>

        <footer style="position:static; bottom:0; left:0; width:100%;">
            <div style="width:100%; margin:0px; padding:0px;">
                <ol class="breadcrumb" style="background-color:rgba(0,0,0,0.73); color:rgba(255,255,255,1.00); border-radius:0px; margin-bottom:0px;">
                    <li><a style="color:rgba(201,201,201,1.00);">Home</a></li>
                    <li style="color:inherit" class="active">Register</li>
                </ol>
            </div>
            <div class="jumbotron" style="margin:0px; padding-top:10px; padding-bottom:5px;">
                <p class="text-center" style="font-size:1.2em;">Copyright &copy TicketEasy </p>
            </div>

        </footer>

    </body>
</html>
