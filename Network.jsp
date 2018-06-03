<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
				<li class="nav-item active">
				<li><a class="nav-link"	href="index.jsp">Home</a></li>
				<li><a class="nav-link" href="#abt1">About Us</a></li>
				<li class="nav-item dropdown">
				<a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> Subjects </a>
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
            <img class="card-img-top img-fluid" style="margin:top;width: 100px;height:100px;" src="networking.jpg" >
            <div class="card-body">            
              <p class="card-text">A computer network, or data network, is a digital telecommunications network which allows nodes to share resources.</p>
              </div>
          </div>
          <div class="card card-outline-secondary my-4">
            <div class="card-header" style="background:white;">
Network computer devices that originate, route and terminate the data are called network nodes.[1] Nodes can include hosts such as personal computers, phones, servers as well as networking hardware. Two such devices can be said to be networked together when one device is able to exchange information with the other device, whether or not they have a direct connection to each other. In most cases, application-specific communications protocols are layered (i.e. carried as payload) over other more general communications protocols. This formidable collection of information technology requires skilled network management to keep it all running reliably.</div><div class="card-body">
              <p>To know more about the basics of Computer Networks you can refer to the below links :</p>
              <ul style="display: inline-block; text-align:center;">
              <li style="text-align:center;"> <a href="https://codescracker.com/networking/">Codescracker</a></li>
              <li style="text-align:center;"> <a href="https://www.studytonight.com/computer-networks/">StudyTonight</a></li>
               </ul>
               <p>Youtube Links:</p>
               <ul style="display: inline-block; text-align:center;">
              <li style="text-align:center;"> <a href="https://www.youtube.com/watch?v=cFd1PjKEZM0&list=PLV8vIYTIdSnYgxRYBC7blHaVUGFHUXLns">Easy engineering</a></li>
              <li style="text-align:center;"> <a href="https://www.youtube.com/watch?v=UXMIxCYZu8o&list=PLEbnTDJUr_IegfoqO4iPnPYQui46QqT0j">Gate Lectures</a></li>
              
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
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	 <script src="jsfunc.js"></script>
</body>
</html>