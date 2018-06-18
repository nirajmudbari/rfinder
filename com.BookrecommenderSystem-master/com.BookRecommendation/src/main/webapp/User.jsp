


<%@ page language="java" %>
<%@ page import ="java.sql.*;"%>


<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Login</title>
    <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Header-Blue.css">
    <link rel="stylesheet" href="assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.13/css/all.css"  integrity="sha384-DNOHZ68U8hZfKXOrtjWvjxusGo9WQnrNx2sqG0tfsghAvtVlRW3tvkXWZh58N9jp" crossorigin="anonymous">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.checked {
    color: orange;
}
</style>

  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>

<body>
		<%	
	     	       	Object str = session.getAttribute("Email");
	     			String id= str.toString();
	     			 %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
    
    response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
    
		session.getAttribute("ID");
        if(session.getAttribute("Email")==null)     
            request.getRequestDispatcher("/Dashboard.jsp").forward(request, response);
                
    %>

    
    <div>
        <nav class="navbar navbar-dark navbar-expand-md bg-secondary navigation-clean" style="padding:auto;height:60px; ">
            <div class="container"><a class="navbar-brand text-light" href="Login.do">BookHub</a>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                       <a class="nav-link" href="Category.jsp"><button class="btn btn-primary btn-sm" type="button"> Select Category</button></a>
                        <a class="nav-link" href="Logout.do"><button class="btn btn-danger btn-sm" type="button"> LogOut</button></a>
                        <%= str %>
                    </ul>
            </div>
    </div>
    </nav>
    </div>
    
    <div class="row" style="background-color:#f2f0f0;">
        <div class="col-4" style="background-color:#f2f0f0;margin:0px 16px 0px;padding:10 px;background-size:auto; margin-left: 100px;">
            <p><strong style="background-color:#f2f0f0; margin:0px 16px 0px; background-size:auto; margin-left: 20px;"> Categories</strong></p>
            <ul style="margin-left: 20px;">
                <li class="d-flex"><a href="index1.html" style="color: gray;">Recommended for you</a></li>
                
                <li class="d-flex"><a href="mystery.do" style="color: gray;"> Mystery</a></li>
                <li class="d-flex"><a href="horror.do" style="color: gray;"> Horror</a></li>
                <li class="d-flex"><a href="suspense.do" style="color: gray;"> Suspense</a></li>
                <li class="d-flex"><a href="romance.do" style="color: gray;"> Romance</a></li>
                <li class="d-flex"><a href="Comedy.do" style="color: gray;"> Comedy</a></li>
               
            </ul>
        </div>
        <div class="col-6" style="background-color:#f2f0f0; padding: 10px;margin-left: -75px;">
            <h5  style="margin-top: 5px; ">Recommended for you</h5>
            <p style="background-color:#f2f0f0; ">Here are some books we think that you'll love based on the interests you selected.</p>
          
          
          	<div class="row">
         <c:forEach items="${BookList}" var="List">
       
         
        <div class="col-md-3 col-sm-4 col-xs-6">
        <a href="${pageContext.request.contextPath}/detailimage.do?id=${List.ISBN}">
         <div class="thumbnail">
                <div class="box" style="overflow-y:scroll;  height:250px;">
                 <img src="${List.image}" class="img-responsive">
                  <figure>
                 
                  <p><strong>${List.book_Title} </strong>
          			by ${List.book_Author}</p>
          			
                    
                    </figure>
               
               
              </div>
               </a>
              
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star "></span>
<span class="fa fa-star"></span>
<span class="fa fa-star"></span>
			
			
              </div>
             
              </div>
              

       </c:forEach>
       </div>
 
    
 </div>
 </div>

   
   <div style="background-color:rgba(58,47,47,0); background-image:url(&quot;assets/img/footer.png&quot;); background-size:cover; background-repeat:no-repeat; height:366px;">
        <div class="container">
            <h1 class="text-center" style="font-family:Hind, sans-serif; font-size:46px; color:rgb(0,0,0); margin-top: 25px;">BookHub</h1>
            <hr>
            <ul class="list-inline" id="text_decoration" style="margin-top:30px; margin-left: 350px;">
                <li class="list-inline-item"><a href="#" class="decoration" style="color:rgb(0,0,0);font-size:20px;margin-right:10px;">Home</a></li>
                <li class="list-inline-item"><a href="#" style="font-size:20px;color:rgb(0,0,0);margin-right:10px;">Services</a></li>
                <li class="list-inline-item"><a href="#" style="font-size:20px;color:rgb(0,0,0);margin-right:10px;">About</a></li>
                <li class="list-inline-item"><a href="#" style="color:rgb(0,0,0);font-size:20px;margin-right:10px;">Terms</a></li>
                <li class="list-inline-item"><a href="#" style="color:rgb(0,0,0);font-size:20px;">Privacy Policy</a></li>
            </ul>
            <p class="text-center" style="margin-top:30px;margin-bottom:15px;"><a href="#" style="font-size:35px;margin-right:30px;"><i class="fa fa-facebook-square" style="color:rgb(0,0,0);margin-right:0px;"></i></a><a href="#" style="font-size:35px;margin-right:30px;"><i class="fa fa-instagram" style="color:rgb(0,0,0);margin-right:0px;"></i></a>
                <a
                    href="#" style="font-size:35px;margin-right:30px;"><i class="icon ion-social-twitter" style="color:rgb(0,0,0);margin-right:2px;"></i></a><a href="#" style="font-size:35px;margin-right:30px;"><i class="icon ion-social-snapchat" style="color:rgb(0,0,0);margin-right:0px;"></i></a><a href="#" style="font-size:35px;"><i class="fa fa-google-plus-square" style="color:rgb(0,0,0);"></i></a></p>
            <p class="text-center" style="color:rgb(193,184,184);font-family:Hind, sans-serif;margin-bottom:23px;">BookHub @ 2017</p>
        </div>
    </div>
    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
</body>

</html>
