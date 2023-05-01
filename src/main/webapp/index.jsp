<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
        <!-- css -->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/mystyle.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
       <!-- navbar -->
       <%@include file="normal_navbar.jsp" %>
       
       <!-- banner -->
       <div class="container-fluid p-0 m-0">
         <div class="jumbotron primary-background text-white">
           <div class="container">
           <h3 class="display-3">Welcome to TechBlog</h3>
           <p>Welcome to technical blog, The world of technology
              A programming language is a system of notation for writing computer programs. Most programming languages are text-based formal languages, but they may also be graphical. They are a kind of computer language.
           </p>
           <p> The description of a programming language is usually split into the two components of syntax (form) and semantics (meaning), which are usually defined by a formal language. 
            Some languages are defined by a specification document (for example, the C programming language is specified by an ISO Standard) while other languages (such as Perl) have a dominant implementation that is treated as a reference. Some languages have both, with the basic language defined by a standard and extensions taken from the dominant implementation being common.      
           </p>
           <button class="btn btn-outline-light btn-lg"><span class="fa fa-external-link"></span>Start ! its Free</button>
           <a href="login_page.jsp"  class="btn btn-outline-light btn-lg"><span class="fa fa-user-circle-o fa-spin"></span>Login</a>
           
           </div>
         </div> 
       </div>
       
       <!-- //Cards -->
       
        <div class="container">
            <div class="row mb-2">
           
                <div class="col-md-4">
                   <div class="card">
  					<div class="card-body">
   					 <h5 class="card-title">Java Programming</h5>
   					 <p class="card-text">Java is a high-level, class-based, object-oriented programming language that is designed to have as few implementation dependencies as possible. It is a general-purpose programming language intended to let programmers write once, run anywhere  meaning that compiled Java code can run on all platforms that support Java without the need to recompile.</p>
  					  <a href="#" class="btn primary-background text-white">Read more</a>
  					 </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4">
                   <div class="card">
  					<div class="card-body">
   					 <h5 class="card-title">Web Development</h5>
   					 <p class="card-text">Web development is the work involved in developing a website for the Internet (World Wide Web) or an intranet (a private network). Web development can range from developing a simple single static page of plain text to complex web applications, electronic businesses, and social network services.</p>
  					  <a href="#" class="btn primary-background text-white">Read more</a>
  					 </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4">
                   <div class="card">
  					<div class="card-body">
   					 <h5 class="card-title">C Programming</h5>
   					 <p class="card-text">The C programming language is a low-level (close to the computer) computer programming language that was developed to do system programming for the operating system UNIX and is an imperative programming language.</p>
  					  <a href="#" class="btn primary-background text-white">Read more</a>
  					 </div>
				    </div>
				  </div>
				   
              </div>
             <!--row2  -->
             <div class="row">
           
                <div class="col-md-4">
                   <div class="card">
  					<div class="card-body">
   					 <h5 class="card-title">Python Programming</h5>
   					 <p class="card-text">Python is an interpreted language. Interpreted languages do not need to be compiled to run. A program called an interpreter runs Python code on almost any kind of computer. This means that a programmer can change the code and quickly see the results.</p>
  					  <a href="#" class="btn primary-background text-white">Read more</a>
  					 </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4">
                   <div class="card">
  					<div class="card-body">
   					 <h5 class="card-title">Data Structure</h5>
   					 <p class="card-text">Data structures provide a means to manage large amounts of data efficiently for uses such as large databases and internet indexing services. Usually, efficient data structures are key to designing efficient algorithms. Some formal design methods and programming languages emphasize data structures, rather than algorithms.</p>
  					  <a href="#" class="btn primary-background text-white">Read more</a>
  					 </div>
				    </div>
				  </div>
				  
				  <div class="col-md-4">
                   <div class="card">
  					<div class="card-body">
   					 <h5 class="card-title">DBMS</h5>
   					 <p class="card-text">A database management system (DBMS) is created for defining, manipulating, retrieving, and managing data within a database. Typically, a DBMS will manipulate the data, data format, field names, file structure, and record structure. It defines rules, too, for the validation and manipulation of said data.</p>
  					  <a href="#" class="btn primary-background text-white">Read more</a>
  					 </div>
				    </div>
				  </div>
              </div>    
          </div>

        <!--javascript-->
        <script
            src="https://code.jquery.com/jquery-3.6.1.min.js" integrity="sha256-o88AwQnZB+VDvE9tvIXrMQaPlFFSUTR+nldQm1LuPXQ=" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
        <script src="js/myjs.js" type="text/javascript"></script>
    </body>
</html>