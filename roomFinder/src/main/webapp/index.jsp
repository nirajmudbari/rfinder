<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Room Finder</title>
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
    <link rel="stylesheet" href="css/glyphicon.css">
    <link rel="stylesheet" href="css/custom.css">
     <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
    
   
            

      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    


    
</head>

<body>
   
    <div class="container">
    <nav class="navbar navbar-light navbar-expand-md navigation-clean-search">
        
            <a class="navbar-brand" href="index.jsp">
                <img class="rounded img-fluid" src="img/newlogo.jpg" width="100px" height="80px"></a>
                <button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="navbar-toggler-icon"></span>
                </button>
           

            <div class="collapse navbar-collapse" id="navcol-1">
                <ul class="nav navbar-nav mx-auto">
                    <li class="nav-item" role="presentation"><a class="nav-link active" href="index.jsp">Home</a></li>
                    <li class="nav-item" role="presentation"><a class="nav-link" href="about.jsp">About Us</a></li>
                    <li class="nav-item" role="presentation" ><a class="nav-link" href="contact.jsp">Contact Us</a></li>
                </ul>
                <form class="form-inline mr-auto" target="_self">
                    <div class="form-group">
                        <label for="search-field"></label>
                    </div>
                </form>
               <a href="login.jsp"> <button class="btn btn-light btn-lg action-button" id="login" type="button" data-bs-hover-animate="pulse" data-toggle="modal" data-target="#exampleModal">Log In</button></a>
                
                <a href="signup.jsp"><button class="btn btn-light btn-lg action-button" id="signupbtn" type="button" data-bs-hover-animate="pulse" data-toggle="modal" data-target="#signupModal">Sign Up</button></a>
                
                         
          </div>
    </nav>
</div>
    <div id="promo" style="text-align:center; padding:100px; margin-top:7px;background-color:purple; no-repeat; background-size:cover;">

      


    
    <div class="container site-section" id="welcome" style="margin-top: -50px">
	
          <p style="font-size:40px; color: white; font-weight: bold; font-family: Bookman Old Style;  ">FIND YOUR IDEAL ROOM FOR RENT</p>
         <div class="nav-wrapper"></div>
      
        <div class="input-field"> <br>

		<p style="font-size:30px; color:#edf3ff; font-family: rockwell; ">Looking For a Room?</p> <br>


   <form action="search.do" method="POST">

        <div class="input-field">
          
          <input id="chartst" type="search" placeholder="" >
          <label class="label-icon" for="search"></label>


           <input type="submit"  value="Search"  onclick=" return charValidate();"></input>
        </div>

   </form>

  
    <script type="text/javascript">
        
     function charValidate() {
       var chartest = document.getElementById('chartst');
       
       
  if (chartest.value == "") {
    alert("  Searched location name must be filled out");
    return false;
     }
   else if (document.getElementById('chartst').value.length > 20) {
    alert(" Location name cannot be more than 20 characters");
     return false;
   }
  
  else {
    return true;

  }
}

    </script>

         
   </div>		
 </div>

  

		
		</div>


    </div>
    </div>
    <div class="dark-section">
        <div class="container site-section" id="how">
            <h1>How it works</h1>
            <div class="row" style="font-size:42px;">
                <div class="col-4">
                    <h1></h1><i class="glyphicon glyphicon-home"></i>
                    <p style="font-size:20px; font-style: bold;">We manually check every room  on Room Finder to keep you safe. Find your perfect room and enjoy.</p> 
                </div>
               &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp 
                <div class="col-4">
                    <h1></h1><i class="fa fa-laptop"></i>
                    <p style="font-size:20px; font-style: bold;">Search the best availbale rooms in your prefered location.</p>
                </div>
            </div>
        </div>
    </div>
    <div style="background-color:rgba(58,47,47,0); background-image:url(&quot;assets/img/footer.png&quot;); background-size:cover; background-repeat:no-repeat; height:366px;">
        <div class="container">
            <h1 class="text-center" style="font-family:ABeeZee, sans-serif; font-size:46px; color:rgb(0,0,0);">Room Finder</h1>
            <hr>
            <ul class="list-inline" id="text_decoration" style="margin-top:30px;font-family:ABeeZee, sans-serif;">
                <li class="list-inline-item"><a href="#" class="decoration" style="color:rgb(0,0,0);font-size:20px;margin-right:10px;">Home</a></li>
                <li class="list-inline-item"><a href="#" style="font-size:20px;color:rgb(0,0,0);margin-right:10px;">Services</a></li>
                <li class="list-inline-item"><a href="#" style="font-size:20px;color:rgb(0,0,0);margin-right:10px;">About</a></li>
                <li class="list-inline-item"><a href="#" style="color:rgb(0,0,0);font-size:20px;margin-right:10px;">Terms</a></li>
                <li class="list-inline-item"><a href="#" style="color:rgb(0,0,0);font-size:20px;">Privacy Policy</a></li>
            </ul>
            <p class="text-center" style="margin-top:30px;margin-bottom:15px;"><a href="#" style="font-size:35px;margin-right:30px;"><i class="fa fa-facebook-square" style="color:rgb(0,0,0);margin-right:0px;"></i></a><a href="#" style="font-size:35px;margin-right:30px;"><i class="fa fa-instagram" style="color:rgb(0,0,0);margin-right:0px;"></i></a>
                <a
                    href="#" style="font-size:35px;margin-right:30px;"><i class="icon ion-social-twitter" style="color:rgb(0,0,0);margin-right:2px;"></i></a><a href="#" style="font-size:35px;margin-right:30px;"><i class="icon ion-social-snapchat" style="color:rgb(0,0,0);margin-right:0px;"></i></a><a href="#"
                        style="font-size:35px;"><i class="fa fa-google-plus-square" style="color:rgb(0,0,0);"></i></a></p>
            <p class="text-center" style="color:rgb(193,184,184);font-family:ABeeZee, sans-serif;margin-bottom:23px;">RoomFinder@ 2018</p>


        </div>
    </div>

</div>

   
</body>

</html>