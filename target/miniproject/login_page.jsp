<%@page import="com.logitone.webapp.miniproject.entities.Message"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta charset="UTF-8">
        <title>login page</title>
        <!-- Css -->      
        <link rel="stylesheet"
        	href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
        	integrity="sha384-Vkoo8x4CGsO3+Hh
        	xv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
        	crossorigin="anonymous">
        <link rel="stylesheet" href="./css/mystyle.css">
        <link rel="stylesheet"
	        href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     </head>
     <body>
	     <!-- navbar -->
	     <%@include file="normal_navbar.jsp"%>
	     <main class="d-flex align-items-center primary-background " style="height: 70vh">
	    	<div class="container">
			 <div class="row">
				<div class="col-md-4 offset-md-4">
					<div class="card">
						<div class="card-header primary-background text-white text-center">
							<span class="fa fa-user-plus"></span>
							<p>Login here</p>
							<br>
						</div>
						
						<div class="card-body">
							<form action="LoginServlet" method="post">
								<div class="form-group">
									<label for="exampleInputEmail1">Email address</label> <input
										name="email" required type="email" class="form-control"
										id="exampleInputEmail1" aria-describedby="emailHelp"
										placeholder="Enter email"> <small id="emailHelp"
										class="form-text text-muted">We'll never share your
										email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">Password</label> 
									<input name="password" required type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="container text-center">
									<button type="submit" class="btn btn-primary">Submit</button>
									<%
										Message m = (Message) session.getAttribute("msg");
										if (m != null) {
									%>
										<div class="alert <%=m.getCssClass()%>" role="alert">
									<%=m.getContent()%>
										</div>
									<%
										session.removeAttribute("msg");
										}
									%>
								</div>
							 </form>
						  </div>
					  </div>
				  </div>
			  </div>
		  </div>
	  </main>


	<!--javascript-->
	<script src="https://code.jquery.com/jquery-3.6.1.min.js"
		integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ="
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script src="js/myjs.js" type="text/javascript"></script>
</body>
</html>