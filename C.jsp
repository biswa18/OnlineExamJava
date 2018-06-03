<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>

<title>Techuiz</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="static/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />	
<link rel="stylesheet"
	href="static/font-awesome/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="static/w3.css">
<link href="style1.css" rel="stylesheet" type="text/css" />
<style>
ul li a{
float:left;
margin:0 auto;
}
a:hover {
	text-shadow: 2px 2px 4px #000000;
}
</style>
</head>
<body onload="startTime()"> 

	<div class='w3-container top'>
		<a class='w3schools-logo w3-large' href='#' style="display:flex;float:left;">TECHUIZ<span class='dotcom'></span></a>
		<div class='w3-right w3-hide-small w3-wide toptext'	style="float:right;font-family:'Segoe UI',Arial,sans-serif;display:block;padding-right:10px;">TEST YOUR TECHNICAL SKILLS</div>
		<div id="txt" style="text-align:center;margin-left: auto;margin-right: auto;display:block;padding-left:10px;"></div>
	</div>

	<nav class="navbar navbar-expand-sm">
		<div class="container-fluid navbar menubar">
			<ul class="nav navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home</a></li>
				<li><a class="nav-link" href="#abt1">About Us</a></li>
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="javascript:;" id="navbardrop" data-toggle="dropdown"> Subjects </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="C.jsp">C</a> 
						<a class="dropdown-item" href="Cpp.jsp">C++</a> 
						<a class="dropdown-item" href="Java.jsp">Java</a> 
						<a class="dropdown-item" href="Html.jsp">HTML</a> 
						<a class="dropdown-item" href="Network.jsp">Computer Networking</a>
					</div></li>
				

			</ul>
			<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
				<form class="form-inline" action="#">
					<input class="form-control" type="text" placeholder="Search">
					<button class="btn btn-success" type="submit">Search</button>
				</form>
			</nav>
			<ul class="nav navbar-nav navbar-expand-sm">
				<li><a class="nav-link" href="signup.jsp"> Sign Up</a></li>
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" id="navbardrop"
					data-toggle="dropdown"> Login As </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="AdminLogin.jsp">Admin</a> <a
							class="dropdown-item" href="StudentLogin.jsp">Student</a>
					</div></li>
			</ul>
		</div>
	</nav>
	
	<div class="col-lg-9">
          <div class="card mt-4">
            <img class="card-img-top img-fluid" style="margin:top;width: 100px;height:100px;" src="c.png" alt="C Programming">
            <div class="card-body">            
              <p class="card-text">C is a general-purpose, imperative computer programming language, supporting structured programming, lexical variable scope and recursion, while a static type system prevents many unintended operations.</p>
              </div>
          </div>
          <div class="card card-outline-secondary my-4">
            <div class="card-header" style="background:white;">
              C was originally developed by Dennis Ritchie between 1969 and 1973 at Bell Labs,[6] and used to re-implement the Unix operating system.[7] It has since become one of the most widely used programming languages of all time,[8][9] with C compilers from various vendors available for the majority of existing computer architectures and operating systems. C has been standardized by the American National Standards Institute (ANSI) since 1989 (see ANSI C) and subsequently by the International Organization for Standardization (ISO).
            </div>
            <div class="card-body">
              <p>To know more about the basics of C programming you can refer to the below links :</p>
              <ul style="display: inline-block; text-align:center;">
              <li style="text-align:center;"> <a href="https://en.wikipedia.org/wiki/C_(programming_language)">C_Wikipedia</a></li>
              <li style="text-align:center;"> <a href="https://www.tutorialspoint.com/cprogramming/index.htm">TutorialsPoint</a></li>
              <li style="text-align:center;"> <a href="https://www.studytonight.com/c/">StudyTonight</a></li>              
               </ul>
               <p>Youtube Links:</p>
               <ul style="display: inline-block; text-align:center;">
              <li style="text-align:center;"> <a href="https://www.youtube.com/watch?v=6VT8hDr2GhU&list=PLfVsf4Bjg79CZ5kHTiQHcm-l2q8j06ofd">Learning Lad</a></li>
              <li style="text-align:center;"> <a href="https://www.youtube.com/user/thenewboston">TheNewBoston</a></li>
               </ul>
            </div>
          </div>
        </div>
        <!-- /.col-lg-9 -->

    
    <footer class="footer">
		<div class="container" style="max-width: 100%; padding-top: 5px;">
			<div class="row"
				style="text-align: center; background-color: #d9d9d9;">
				<div class="col-md-4 col-sm-12 footer-message">
					<h5 class="footer-header" id="abt1">About Us</h5>
					<div class="footer-body">This website gives a platform from
						Teachers to students,anyone to host their own examination question
						to the basic sources of tutorials and online exam for students.</div>
				</div>
				<div class="col-md-4 col-sm-12 footer-message">
					<h5 class="footer-header">Join Us Today!</h5>
					<div class="footer-body">
						What are you waiting for? Sign up <a id="link" href="signup.jsp">here</a>
						today and either create questions for your student or take exam on
						any subjects available, today!
					</div>
				</div>
				<div class="col-md-4 col-sm-12 footer-message">
					<h5 class="footer-header" style="padding-bottom: 3px;">Social
						Media</h5>

					<a href="#" class="fa fa-facebook"></a> <a href="#"
						class="fa fa-twitter"></a> <a href="#" class="fa fa-linkedin"></a>
				</div>
			</div>

			<div class="footer-bottom">
				<div class="container-footr">
					<div class="row">
						<div>
							<div class="footer-copyright">
								Copyright &copy; 2018 Techuiz. Designed and Developed by <a
									href="http://biswadeb.epizy.com" target="_blank">Biswadeb
									Mukhopadhyay</a>.
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	 <script src="jsfunc.js"></script>
</body>
</html>