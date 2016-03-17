<html>
  
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
  
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Auto-Completion using AJAX</title>

        <script type="text/javascript" src="javascript.js"></script>
        <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  
  
  <body onload="init()">

    <form name="autofillform" action="autocomplete">
      <table border="0" cellpadding="5"> 
        <tbody>
          <tr>
            <td><strong>Destination City:</strong></td>
                        <td>
                            <input type="text"
                       size="40" 
                       id="complete-field"
                                   onkeyup="doCompletion()">
                        </td>
          </tr>
          <tr>
              <td id="auto-row" colspan="2">
                <table id="complete-table" class="popupBox" />
              </td>
          </tr>
        </tbody>
      </table>
    </form>
	
	</body>
	
	<body onload="init()">

	
	<form name="autofillform" action="autocomplete">
      <table border="0" cellpadding="5"> 
        <tbody>
          <tr>Source City:</strong></td>
                        <td>
                            <input type="text"
                       size="40" 
                       id="complete-field"
                                   onkeyup="doCompletion()">
                        </td>
          </tr>
          <tr>
              <td id="auto-row" colspan="2">
                <table id="complete-table1" class="popupBox" />
              </td>
          </tr>
        </tbody>
      </table>
    </form>
	
  </body>
</html>