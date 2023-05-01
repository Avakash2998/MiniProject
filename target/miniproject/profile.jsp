<%@page import="java.util.ArrayList"%>
<%@page
	import="com.logitone.webapp.miniproject.helper.ConnectionProvider"%>
<%@page import="com.logitone.webapp.miniproject.dao.PostDao"%>
<%@page import="com.logitone.webapp.miniproject.entities.User"%>
<%@page import="com.logitone.webapp.miniproject.entities.Category"%>
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
      <meta charset="UTF-8">
      <title>profile Page</title>

      <!-- css -->
      <link rel="stylesheet"
	     href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css"
		 integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
		 crossorigin="anonymous">
      <link rel="stylesheet" href="./css/mystyle.css">
	  <link rel="stylesheet"
	  href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

   </head>
   <body>
	   <!-- navbar start -->
	   <%
	   User user = (User) session.getAttribute("currentUser");
	   if (user == null) {
		response.sendRedirect("login_page.jsp");
	   }
	   %>
	   <nav class="navbar navbar-expand-lg navbar-dark primary-background">
		<a class="navbar-brand" href="index.jsp"> <span class="fa fa-asterisk"></span>Tech Blog</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
			 <span class="navbar-toggler-icon"></span>
	    	 </button>
		     <div class="collapse navbar-collapse" id="navbarSupportedContent">
			     <ul class="navbar-nav mr-auto">
				  <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <span class="fa fa-check-circle-o"></span>Categories</a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="#">Programming Language</a> 
						<a class="dropdown-item" href="#">Project Implementation</a>
						<div class="dropdown-divider"></div>
						<a class="dropdown-item" href="#">Data Structure</a>
					</div>
				    <li class="nav-item"><a class="nav-link" href="#"> <span class="fa fa-phone"></span> Contact </a></li>
				    <li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#add-post-modal"> <span class="fa fa-comments"></span>Do Post</a></li></ul>
			        <ul class="navbar-nav mr-right">
			     	<li class="nav-item"><a class="nav-link" href="#" data-toggle="modal" data-target="#profile-modal"> <span class="fa fa-user"></span><%=user.getName()%></a></li>
			     	<li class="nav-item"><a class="nav-link" href="LogoutServlet">
			        <span class="fa fa-user-plus"></span>logout</a></li>
			        </ul>
		       </div>
	        </nav>

	<!-- navbar end -->
	<!-- ***************************************************** -->
	<!--  Start of Profile Modal-->
	<!-- Button trigger modal -->

	     <!-- Modal -->
	     <div class="modal fade" id="profile-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLongTitle" aria-hidden="true">
	     <div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header primary-background text-white">
					<h5 class="modal-title" id="exampleModalLongTitle">Tech Blog</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					  <span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<div class="container text-center">
						<img src="img/<%=user.getProfile()%>" class="img-fluid">
						<h5 class="modal-title" id="exampleModalLongTitle"><%=user.getName()%></h5>

						<!-- user details -->

						<div id="profile-details">
							<table class="table">
								<tbody>
									<tr>
										<th scope="row">ID</th>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<th scope="row">Name</th>
										<td><%=user.getName()%></td>
									</tr>
									<tr>
										<th scope="row">Email</th>
										<td><%=user.getEmail()%></td>
									</tr>
									<tr>
										<th scope="row">Gender</th>
										<td><%=user.getGender()%></td>
									</tr>
									<tr>
										<th scope="row">About</th>
										<td><%=user.getAbout()%></td>
									</tr>
								</tbody>
							</table>
						</div>

						<!-- profile edit -->
						
						<div id="profile-edit" display="none";>
							<h4 class="mt-2">Please Edit Carefully</h4>
							<form action="EditServlet" method="post"
								enctype="multipart/form-data">
								<table class="table">
									<tr>
										<td>ID :</td>
										<td><%=user.getId()%></td>
									</tr>
									<tr>
										<td>Email :</td>
										<td><input type="email" class="form-control"
											name="user_email" value="<%=user.getEmail()%>"></td>
									</tr>
									<tr>
										<td>Name :</td>
										<td><input type="text" class="form-control"
											name="user_name" value="<%=user.getName()%>"></td>
									</tr>
									<tr>
										<td>Password :</td>
										<td><input type="password" class="form-control"
											name="user_password" value="<%=user.getPassword()%>"></td>
									</tr>
									<tr>
										<td>Gender :</td>
										<td><%=user.getGender().toUpperCase()%></td>
									</tr>
									<tr>
										<td>About :</td>
										<td><textarea rows="3" class="form-control"
											name="user_about"><%=user.getAbout()%>  </textarea>                  
								    </td>
									</tr>
									<tr>
										<td>New Profile :</td>
										<td><input type="file" name="image" class="form-control">
										<td>
									</tr>
								</table>
								<div class="container">
									<button type="submit" class="btn btn-outline-primary">save</button>
								</div>
							 </form>
						  </div>
					   </div>
				   </div>
				 <div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-dismiss="modal">Close</button>
					<button id="edit-profile-button" type="button"
						class="btn btn-primary">Edit</button>
				 </div>
			  </div>
		   </div>
	    </div>

	<!-- end of profile modal -->
	<!-- add post modal -->
	<!-- Modal for post -->
	<div class="modal fade" id="add-post-modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Provide the post details</h5>
					<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<div class="modal-body">
					<form id="add-post-form" action="AddPostServlet" method="post">
						<div class="form-group">
							<input name="pTitle" type="text" placeholder="Enter Post Title"
								class="form-control" />
						</div>

						<div class="form-group">
							<textarea name="pContent" class="form-control"
								style="height: 200px;" placeholder="Enter Your Content"></textarea>
						</div>
						<div class="form-group">
						<textarea name="pCode" class="form-control" style="height: 200px;" placeholder="Enter Your Program(if any)"></textarea>
						</div>
						<div class="form-group">
							<label>Select your pic..</label> <br> <input type="file" name="pPic">
						</div>
						<div class="container text-center">
							<button type="submit" class="btn btn-outline-primary">Post</button>
						</div>
					 </form>
				   </div>
			   </div>
		    </div>
	    </div>


	<!-- end post modal -->
	<!--start featurette -->
	   <br>
       <div class="container">
         <div class="row featurette">
           <div class="col-md-7">
            <h2 class="featurette-heading">Whether you are looking for a place to grow your Java development skills. <span class="text-muted"></span></h2>
            <p class="lead">If you are thinking that self-learning Java development through blogs, online courses, and tutorials is a waste of time, you might want to rethink that… What creates high demand for Java developers is the versatility of the Java language; it can easily serve any purpose. Good Java developers can be very successful and most of them admit that they basically gained their skills and knowledge through online resources, especially blogs.</p>
           </div>
           <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 400px; height: 400px;" src="img/java.jpg" data-holder-rendered="true">
          </div>
         </div>
         <br>
        
        <div class="row featurette">
          <div class="col-md-7">
            <h2 class="featurette-heading">How to Practice Python Beyond 'Hello World!'. <span class="text-muted"></span></h2>
            <p class="lead">Let’s take a look at Python’s history so we can get an understanding of why it’s such a popular language. Python was created by GUIDO VAN ROSSUM in 1991. His main goal was to develop an easy and intuitive language that is as understandable as plain English; this new language would not be a hassle to learn. It would be suitable for everyday tasks, open source (so anyone can contribute to its development) and as powerful as its major competitors. It’s not a surprise that a programming language that offers all of these features should be widely accepted and become one of the dominating players in software development. PYTHON IS DEFINITELY WORTH LEARNING IN 2022 if you plan to have a career in tech..</p>
          </div>
          <div class="col-md-5">
            <img class="featurette-image img-fluid mx-auto" data-src="holder.js/500x500/auto" alt="500x500" style="width: 400px; height: 400px;" src="img/python.jpg" data-holder-rendered="true">
          </div>
        </div>
       </div>
 

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