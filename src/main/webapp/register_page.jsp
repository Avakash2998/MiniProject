<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="UTF-8">
		<title>Register here</title>

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
		<main class="d-flex align-items-center primary-background">
			<div class="container">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-header primary-background  text-center"><span class="fa fa-2x fa-user-circle"></span> <br>Register here</div>
					<div class="card-body">
						<form action="RegisterServlet" method="post">
							<div class="form-group">
								<label for="user_name">User Name</label> 
								<input name="user_name" type="text" class="form-control" id="user_name" aria-describedby="emailHelp" placeholder="Enter name">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Email address</label> 
								<input  type="email" name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
								<small id="emailHelp" class="form-text text-muted">We'll
									never share your email with anyone else.</small>
							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label>
								 <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
							</div>

							<div class="form-group">
								<label for="gender">Select gender</label> <br> 
								<input type="radio" id="gender" name="gender" value="male">male 
								<input type="radio" id="gender" name="gender" value="female">female
							</div>
							<textarea name="about" class="form-control" id="" rows="4" placeholder="enter something about yourself"></textarea>

							<div class="form-check">
								<input name="check" type="checkbox" class="form-check-input" id="exampleCheck1">
								 <label class="form-check-label" for="exampleCheck1">agree terms and conditions</label>
							</div>
							<br>
			  				<button type="submit" class="btn btn-primary">Submit</button>
						</form>
					</div>
					<div class="class-footer"></div>
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