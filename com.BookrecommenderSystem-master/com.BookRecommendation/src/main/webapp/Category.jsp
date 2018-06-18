<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Category</title>
    <link href="https://fonts.googleapis.com/css?family=Hind" rel="stylesheet">
    <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,700">
    <link rel="stylesheet" href="assets/css/Article-List.css">
    <link rel="stylesheet" href="assets/css/Header-Blue.css">
    <link rel="stylesheet" href="assets/css/Navigation-Clean.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Projects-Horizontal.css">
    <link rel="stylesheet" href="assets/css/styles.css">
 <link rel="stylesheet" href="assets/css/JLX-Footer-with-Icons.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Button.css">
    <link rel="stylesheet" href="assets/css/Navigation-with-Search.css">
    <link rel="stylesheet" href="assets/css/Pretty-Footer.css">
    <link rel="stylesheet" href="assets/css/Responsive-footer.css">
    <link rel="stylesheet" href="assets/css/Responsive-footer1.css">
</head>
<body>

<%

response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
     	if(session.getAttribute("Email")==null){
	
		request.getRequestDispatcher("Dashboard.jsp").forward(request, response);
                }	
	%>
	
	<div>
        <nav class="navbar navbar-dark navbar-expand-md bg-secondary navigation-clean" style="padding:10px;height:60px;">
            <div class="container"><a class="navbar-brand text-light" href="Dashboard.jsp">BookHub</a><button class="navbar-toggler" data-toggle="collapse" data-target="#navcol-1"><span class="sr-only">Toggle navigation</span><span class="navbar-toggler-icon"></span></button>
                <div
                    class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                       
                        <a class="nav-link" href="Logout.do"><button class="btn btn-danger btn-sm" type="button"> LogOut</button></a>
                    </ul>
            </div>
    </div>
    </nav>
    </div>


<div class='col-sm-10'>

    <h2 class='settings-page-title'>Category Preferences</h2>

        <div class='row'>
            <div class='col-sm-10'>
                <form action="Category.do" id="interest-choice-form" method="post">
                
                    <div class='preferences-content'>
                        <div class='category-groups'>
                    
                            <div class='interest-group'>
                                <h5 class='standard'>Mysteries, Thrillers, Action</h5>
                                    <div class='row'>
                                        
                                       
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_2" value="1"> Psychological Thrillers</label>
                                            </div>
                                        </div>
                                        
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_4" value="2"> Historical Mysteries</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_5" value="3"> Thrillers</label>
                                            </div>
                                        </div>
                                        
                                           
                                    </div>
                            
                            <div class='interest-group'>
                                <h5 class='standard'>Romance</h5>
                                    <div class='row'>
                                       
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_9" value="4"> Romantic Suspense</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_10" value="5"> New Adult Romance</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_11" value="6"> Erotic Romance</label>
                                            </div>
                                         </div>
                                       
                                          
                            </div>
                            </div>

                            <div class='interest-group'>
                                <h5 class='standard'>Fantasy, Science Fiction, Horror</h5>
                                    <div class='row'>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_13" value="7"> Science Fiction</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_14" value="8"> Fantasy</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_15" value="9"> Horror</label>
                                            </div>
                                        </div>
                                           
                            </div>
                            </div>

                            <div class='interest-group'>
                                <h5 class='standard'>Nonfiction</h5>
                                    <div class='row'>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_16" value="10"> History</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_17" value="11"> Cooking</label>
                                            </div>
                                        </div>
                                        <div class='col-sm-10'>
                                            <div class='checkbox'>
                                                <label class='unselectable'>
                                                    <input type="checkbox" name="user_book_category" id="user_book_category_18" value="12"> Science</label>
                                            </div>
                                        </div>
                                       
                                            <input type="hidden" name="user_book_category" id="user_book_category_ids_" value="">
                                    </div>
                            </div>
                            </div>
                            </div>
                            </div>
                        
                    
                        <input type="hidden" name="is_update" id="is_update" value="true">

                        <div class='page-submit' style="margin-top: 10px;">
                        <input type="submit" class="btn btn-success" value="Submit">
                           
                        </div>
                </form>
            </div>
        </div>
</div>

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/js/bs-animation.js"></script>
</body>
</html>