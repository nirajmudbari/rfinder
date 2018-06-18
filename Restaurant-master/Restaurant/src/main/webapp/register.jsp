<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Find a Restaurant">
    <meta name="author" content="">

    <title>Register</title>

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
    padding-top: calc(7rem - 80px);
    padding-bottom: 7rem;
    background: linear-gradient(0deg,#ff6a00 0,#0a0109 100%);
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: scroll;
    background-size: cover;">
      <div class="register-photo" style="margin:200px;">
        <div class="form-container">
            <form method="post" style="margin:100px;" action="SignUp.do" name="myform" onsubmit= 'return validateform()'>
                <h2 class="text-center"><strong>Create an account.</strong></h2>
                <div class="form-group"><input class="form-control" type="email" name="email" placeholder="Email" /></div>
                <div class="form-group"><input class="form-control" type="password" name="password" placeholder="Password" /></div>
                <div class="form-group"><input class="form-control" type="password" name="password_repeat" placeholder="Password_repeat" /></div>
                <div class="form-group">
                    <div class="form-check"><label class="form-check-label"><input class="form-check-input" type="checkbox" />I agree to the <a href="#">license terms</a>.</label></div>
                </div>
                <div class="form-group"><input class="btn btn-primary btn-block" type="submit" value="Sign Up"></div><a href="login.jsp" class="already">You already have an account? Login here.</a></form>
        </div>
    </div>

	</header>
	
	
	
	 <!-- Footer -->
    <footer class="py-5 bg-black">
      <div class="container">
		<p class="m-0 text-center text-white small"><a class="float-right visible" href="contact.jsp" style="color:#cccccc;margin:0px;font-size:16px;height:0px;width:66px;">About Us</a></p>
		<p class="m-0 text-center text-white small"><a class="float-left visible" href="contact.jsp" style="color:#cccccc;margin:0px;font-size:16px;width:100px;height:0px;">Contact Us</a></p>
        <p class="m-0 text-center text-white small">Copyright &copy;</p>
      </div>
      <!-- /.container -->
    </footer>
	
	<script>  
		function validateform()
		{  
			var name=document.myform.email.value;  
			var password=document.myform.password.value; 
			var password_repeat=document.myform.password_repeat.value;
			  
			if (name==null || name=="")
			{  
			  alert("Email can't be blank");  
			  return false;  
			}
			else if(password.length<6 || password_repeat<6)
			{  
			  alert("Password must be at least 6 characters long.");  
			  return false;  
			}
			
			if(password_repeat==password){
				return true;
			}
			else{
				alert("Password doesnot match.");
				return false;
			}
		}  
	</script>
	
  </body>

</html>
    