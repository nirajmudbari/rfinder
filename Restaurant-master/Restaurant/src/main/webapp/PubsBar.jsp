<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

  <!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Find a Restaurant">
    <meta name="author" content="">

    <title>Pubs and Bars</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Lato:100,100i,300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/one-page-wonder.min.css" rel="stylesheet">

  </head>

  <body>
  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

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
    padding-top: calc(7rem + 80px);
    padding-bottom: 20rem;
    background: linear-gradient(0deg,#ff6a00 0,#0a0109 100%);
    background-repeat: no-repeat;
    background-position: center;
    background-attachment: scroll;
    background-size: cover;">

  

   <div class="col-sm-6 col-md-4 item">
    <table cellspacing="50" cellpadding="20">
     
      <c:forEach items="${RestaurantList}" var="List">
        
      <tr>
        <td><h3>1.</h3></td>
        <td><a href= "${pageContext.request.contextPath}/detailimage.do?id=${List.restaurantId}"><img src="List.image" style="height:180px; width:180px;"></a></td>    
        <td><class= "text-white"><h3>${List.name}</h3> <br> <h5>${List.street}, ${List.city}</h5></td>
       <td><class="text-white"><h5> ${List.contact}</h5></td>
      </tr>
    
  
 </c:forEach>
  </table>

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
	
  </body>

</html>
      