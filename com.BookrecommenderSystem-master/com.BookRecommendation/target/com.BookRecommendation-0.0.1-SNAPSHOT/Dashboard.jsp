<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Dashboard</title>
	<link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/fonts/font-awesome.min.css">
    <link rel="stylesheet" href="assets/fonts/ionicons.min.css">
    <link rel="stylesheet" href="assets/fonts/material-icons.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/css/JLX-Footer-with-Icons.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Pretty-Footer.css">
    <link rel="stylesheet" href="assets/css/Responsive-footer.css">
    <link rel="stylesheet" href="assets/css/Responsive-footer1.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/glyphicon.css">
</head>
<body>
	 <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
        <div class="container">
            <a class="navbar-brand">
                <img class="rounded img-fluid" src="assets/img/bhlogo-with-black-background.jpg" width="42px" height="42px">BookHub</a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
            <div
                class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mx-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="Dashboard.jsp">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">About Us</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="#">Contact Us</a></li>
                    
                </ul>
                
                
                <button class="btn btn-light btn-lg action-button" type="button" data-bs-hover-animate="pulse" data-toggle="modal" data-target="#exampleModal">Log In
                </button>
                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title" id="exampleModalLabel" style="margin-left: 200px;">Login</h3>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                        </div>
                        
                         <div class="modal-body">
                         
                            <form method="post" action="Login.do" "form-horizontal"  margin-left: 10px; ">
                    <div class="form-group input-group">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-user" style="font-size: 20px; margin-top: 5px;"></span>
                        </span>
                        <input type="text" class="form-control" name="Email" placeholder="Email" required="Required">
                    </div>
                    <div class="form-group input-group">
                        <span class="input-group-addon">
                            <span class="glyphicon glyphicon-lock" style="font-size: 20px; margin-top: 5px;"></span>
                        </span>
                        
                        <input type="password" class="form-control" name="Password" placeholder="Password" required="Required">
                    </div>

                        
                        <div class="modal-footer">
                            <input type = "submit" style="color: white;" class="btn btn-primary"  value = "Login" >
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                        </div>
                    
                    
        </form>        
</div>
            
        
    </nav>
    <div></div>
    <div id="promo" style="text-align:center; padding:100px; background:url(assets/img/back12.jpg) no-repeat; background-size:cover;">
        <div class="jumbotron">
            <h2>
                <br><strong>Recommendation&nbsp;On Your Choice</strong><br><br>
            </h2>
            <p style="color: white;"><a class="btn btn-success btn-lg" data-toggle="modal" data-target="#exampleModalLong">Sign Up</a></p>
        </div>
    </div>
<div class="modal fade" id="exampleModalLong" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Please Sign Up</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      
      <div class="modal-body">
        <form method="post" action="SignUp.do" margin: 0 auto; width: 90%;" >
            <table>
                <tr>
                    <tr><td>First Name:</td></tr>
                    <tr><td colspan="2"><input type="text" name="FirstName" placeholder="First Name" class="form-control"></td></tr>
                    
                </tr>
                <tr>
                    <tr><td>Last Name:</td></tr>
                    <tr><td colspan="2"><input type="text" name="LastName" placeholder="Last Name" class="form-control"></td></tr>
                </tr>


                <tr>
                    <tr><td>Email:</td></tr>
                    <tr><td colspan="2"><input type="text" name="Email" placeholder="Email" class="form-control" required></td> 
                </tr>
                </tr>
                <tr>
                    <tr><td>Password:</td></tr>
                    <tr><td><input type="password" name="Password" placeholder="Password" class="form-control" required></td>
                    <td><input type="password" placeholder="Re-type Password" class="form-control" required></td></tr>
                </tr>
                </table>
                
                       
      
      <div class="modal-footer">
        <input type="submit" value="SignUp" style="color: white;" class="btn btn-primary">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
 </form>
 </div>

 
  
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
</body>
</html>