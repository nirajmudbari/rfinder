<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Find a Restaurant">
    <meta name="author" content="">

    <title>Login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

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
      <div 
		class="float-right justify-content-center align-items-center login-clean" 
		style="padding:0px;height:600px;margin:-18px;width:986px;">
        <form method="post" action="login.do" name="myform" style="margin:144px;padding:30px;width:579px;height:40px;max-width:385px;" onsubmit='return validateform(this)'>
            <h2 class="text-center"><strong>Login</strong></h2>
            
            <div class="form-group"><input class="form-control" type="email" name="email" id="email" placeholder="Email" />
			</div>
            <div class="form-group"><input class="form-control" type="password" name="password" id="password" placeholder="Password" />
			</div>
            <div class="form-group">
				<input class="btn btn-primary btn-block" type="submit" value="Log In">
			</div>				
            <p class="text-center" style="font-size:26px;">OR</p>
			<p><a class="btn btn-info btn-lg d-flex justify-content-center align-items-center align-content-center align-self-center" role="button" href="signup.jsp">
				SignUp</a></p></form>
    </div>
	</header>
	
	
	
	 <!-- Footer -->
    <footer class="py-5 bg-black">
      <div class="container">
		<p class="m-0 text-center text-white small"><a class="float-right visible" href="contact.html" style="color:#cccccc;margin:0px;font-size:16px;height:0px;width:66px;">About Us</a></p>
		<p class="m-0 text-center text-white small"><a class="float-left visible" href="contact.html" style="color:#cccccc;margin:0px;font-size:16px;width:100px;height:0px;">Contact Us</a></p>
        <p class="m-0 text-center text-white small">Copyright &copy;</p>
      </div>
      <!-- /.container -->
    </footer>
	<script>  
		function validateform(frm){ 

			var name=frm.email.value;  
			var password=frm.password.value;  
			  
			if (name==null || name==""){  
			  alert("Email can't be blank");  
			  return false;  
			}else if(password.length<6){  
			  alert("Password must be at least 6 characters long.");  
			  return false;  
			}  
		}  
	</script>
  </body>

</html>
