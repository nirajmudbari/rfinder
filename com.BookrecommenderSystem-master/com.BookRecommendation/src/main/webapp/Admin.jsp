<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <title>Admin Area | Dashboard</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/style1.css" rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="css/glyphicon.css">

  </head>

  <body>
  
  <%
  
  		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
     	if(session.getAttribute("Email")==null){
	
		request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
                }	
	%>

   <center>
        <h1>File Upload to Database Demo</h1>
        <form method="post" action="${pageContext.request.contextPath}/uploadServlet" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>ISBN: </td>
                    <td><input type="text" name="ISBN" size="50"/></td>
                </tr>
                <tr>
                    <td>Book_Title: </td>
                    <td><input type="text" name="Book_Title" size="50"/></td>
                </tr>
                 <tr>
                    <td>Book_Author: </td>
                    <td><input type="text" name="Book_Author" size="50"/></td>
                </tr>
                 <tr>
                    <td>Year_of_Publication: </td>
                    <td><input type="text" name="Year_of_Publication" size="50"/></td>
                </tr>
                <tr>
                    <td>Image: </td>
                    <td><input type="file" name="Image" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>