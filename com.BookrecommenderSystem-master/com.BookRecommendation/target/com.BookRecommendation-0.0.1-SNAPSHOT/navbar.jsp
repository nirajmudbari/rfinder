
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	<nav class="navbar navbar-dark navbar-expand-md bg-secondary navigation-clean" style="padding:auto;height:60px; ">
            <div class="container"><a class="navbar-brand text-light" href="Login.do">BookHub</a>
                <div class="collapse navbar-collapse" id="navcol-1">
                    <ul class="nav navbar-nav ml-auto">
                       <a class="nav-link" href="Category.jsp"><button class="btn btn-primary btn-sm" type="button"> Select Category</button></a>
                        <a class="nav-link" href="Logout.do"><button class="btn btn-danger btn-sm" type="button"> LogOut</button></a>
                    </ul>
            </div>
    </div>
				<c:choose>
					<c:when test="${empty sessionScope.artist}">
						<li>
							<a href="${pageContext.request.contextPath}/Login.do">Login</a></li>
							<li>
							 
						</li>	
							<!-- Modal -->
						</c:when>


					<c:otherwise>
						<li><a href="${pageContext.request.contextPath}/Logout.do">Logout</a></li>
					</c:otherwise>
				</c:choose>
			</ul>
		</div>
	</div>
</nav>
   