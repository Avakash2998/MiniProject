<%@ page language="java" contentType="text/html" pageEncoding="Utf-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
		<meta charset="UTF-8">
		<title>Sorry Something Went Wrong</title>
		
		 <!-- css -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
       <div class="container  text-center">
       	   <img src="img/browser.png" class="img-fluid" >
       	   <h2 class="display-3">sorry something went wrong</h2>
       	   <%@= exception%>
       	   <a href="index.jsp" class="btn primary-background btn-lg text-white mt-3">Home </a>
       </div>
	</body>
</html>