<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

    
 
 <!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Find a Restaurant">
    <meta name="author" content="">

    <title>Find a Restaurant</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/one-page-wonder.min.css" rel="stylesheet">

  </head>

  <body>

   

    <header class="masthead text-center text-white" style="position: relative;
    overflow: hidden;
    padding-top: calc(7rem + 72px);
    padding-bottom: 7rem;
    background: linear-gradient(0deg,#ff6a00 0,#0a0109 100%);
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: scroll;
    background-size: cover;">
      <div class="masthead-content">
        <div class="container">
          <h1 class="masthead-heading mb-0"><small>Bhok Lagyo</small></h1>          
          <a href="login.jsp" class="btn btn-primary btn-xl rounded-pill">Login</a> OR
		  <a href="register.jsp" class="btn btn-info btn-xl rounded-pill justify-content-center ">Signup</a>
		  <h2 class="masthead-subheading mb-0"><small><small>TO FIND A RESTAURANT OF YOUR CHOICE</small></small></h2>
        </div>
      </div>
	  <p><br></p>
	 
	  
     
     
    </header>
	
	<script>  
		function validateform(){  
			var name=document.myform.email.value;  
			var password=document.myform.password.value;  
			  
			if (name==null || name==""){  
			  alert("Name can't be blank");  
			  return false;  
			}else if(password.length<6){  
			  alert("Password must be at least 6 characters long.");  
			  return false;  
			}  
		}  
	</script>
    
    <!-- Footer -->
    <footer class="py-5 bg-black">
      <div class="container">
		<p class="m-0 text-center text-white small"><a class="float-right visible" href="contact.jsp" style="color:#cccccc;margin:0px;font-size:16px;height:0px;width:66px;">About Us</a></p>
		<p class="m-0 text-center text-white small"><a class="float-left visible" href="contact.jsp" style="color:#cccccc;margin:0px;font-size:16px;width:100px;height:0px;">Contact Us</a></p>
        <p class="m-0 text-center text-white small">Copyright &copy;</p>
      </div>
      <!-- /.container -->
    </footer>

	
	
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
     