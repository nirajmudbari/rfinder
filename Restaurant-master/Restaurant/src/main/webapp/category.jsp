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

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark navbar-custom fixed-top">
      <div class="container">
        <a class="navbar-brand" href="Dashboard.jsp" style="text-transform: uppercase;  font-size: 2rem;  letter-spacing: .1rem; font-weight: 700;">Bhok Lagyo</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
		
				<font size=4>
							<form>
								<input class="sb-search-input" placeholder="Search for a restaurant..." type="text" value="" name="search" id="search" style="border-radius: 12px; width: 450px;">
								<input class="sb-search-submit" type="submit" value="Search" style="border-radius: 12px; width:87px;">
								<span class="sb-icon-search" title="Click to start searching for restaurants"></span>
							</form>
				</font>
		
        
		<div class="float-right">
			<h2 class="small"><a class="text-white" href=#>View Profile</a></h2>
        </div>
		
		<div class="float-right">
		<h2 class="small"><a class="text-white" href="Dashboard.jsp">Logout</a></h2>
		</div>
		
      </div>
    </nav>

    <header class="masthead text-center text-white" style="position: relative;
    overflow: hidden;
    padding-top: calc(7rem + 72px);
    padding-bottom: 7rem;
    background: linear-gradient(0deg,#ff6a00 0,#0a0109 100%);
    background-repeat: no-repeat;
    background-position: center center;
    background-attachment: scroll;
    background-size: cover;">
      
	  <p><big>Choose your category</big><br></p>
	  <div class="row articles">
                <div class="col-sm-6 col-md-4 item"><a href="PubsBar.do " class=" text-white"><img class="img-fluid" src="img/pubsandbars.jpg" style="height:350px; width:350px; " />
                    <h3 class="name">Pubs and Bars</h3></a>
                    <p class="description">
						Search for pubs and bars that serve the best drinks. Choose this options if you want to chill and have a good time with some drinks.
					</p><a href="#" class="action"></a><a class="invisible" href="#" style="width:228px;height:268px;margin:37px;padding:82px;"></a></div>
                <div class="col-sm-6 col-md-4 item"><a href="Bistros.do" class=" text-white"><img class="img-fluid" src="img/bistros.jpg" style="height:350px; width:350px;" />
                    <h3 class="name">Bistros/Café</h3></a>
                    <p class="description">
						Choose this option if you want to have a normal breakfast, lunch or dinner, even brunch.
					</p><a href="#" class="action"></a></div>
        <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="img/coffeeshops.jpg" style="height:350px; width:350px;" /></a>
            <h3 class="name">Coffee Shops</h3>
            <p class="description">
				The best coffee shops in town are listed here. Go check it out.
			</p><a href="#" class="action"></a></div>
    </div>
   
     <div class="row articles">
                <div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="img/livemusic.jpg" style="height:350px; width:350px; " /></a>
                    <h3 class="name">Live Music</h3>
                    <p class="description">
						Click here if you want to enjoy your food and drinks as well as some good live music.
					</p><a href="#" class="action"></a><a class="invisible" href="#" style="width:228px;height:268px;margin:37px;padding:82px;"></a></div>
                <div
                    class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="img/newaricuisine.jpg" style="height:350px; width:350px;" /></a>
                    <h3 class="name">Newari Cuisine</h3>
                    <p class="description">
						Nothing beats the variety that a newari restaurant has. Check out some of the best Newari restaurants and enjoy newari food.
					</p><a href="#" class="action"></a></div>
				<div class="col-sm-6 col-md-4 item"><a href="#"><img class="img-fluid" src="img/burgerjoint.jpg" style="height:350px; width:350px;" /></a>
					<h3 class="name">Burger Joints</h3>
					<p class="description">
						Who else is in the mood for a burger or a sandwich while reading this? Go check our list of burger and sandwich joints.
					</p><a href="#" class="action"></a></div>
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
		function validateform(){  
			var name=document.myform.name.value;  
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
	
    <!-- Bootstrap core JavaScript -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
    