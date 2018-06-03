<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
  <title>Techuiz</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">       
   	  <link href="static/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
   	  <link rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css" type="text/css"/>
      <link rel="stylesheet" href="static/w3.css">
      <link href="style1.css" rel="stylesheet" type="text/css"/>   
      <link href="formstyle.css" rel="stylesheet" type="text/css"/>  
   <style>
    a:hover 
  {
    text-shadow:2px 2px 4px #000000;   
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
  <ul class="nav navbar-nav" >
    <li class="nav-item active"><a class="nav-link" href="index.jsp">Home</a></li>
    <li><a class="nav-link" href="#abt1">About Us</a></li>
    <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Subjects
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="C.jsp">C</a>
        <a class="dropdown-item" href="Cpp.jsp">C++</a>
        <a class="dropdown-item" href="Java.jsp">Java</a>
        <a class="dropdown-item" href="Html.jsp">HTML</a>
        <a class="dropdown-item" href="Network.jsp">Computer Networking</a>
      </div>
    </li>
    
  </ul>
  <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <form class="form-inline" action="#">
    <input class="form-control" type="text" placeholder="Search">
    <button class="btn btn-success" type="submit">Search</button>
  </form>
</nav>
    <ul class="nav navbar-nav navbar-expand-sm">
      <li><a class="nav-link" href="signup.jsp"> Sign Up</a></li>
      <li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Login As
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="AdminLogin.jsp">Admin</a>
        <a class="dropdown-item" href="StudentLogin.jsp">Student</a>        
      </div>
    </li>
    </ul>
   </div>   
</nav>
  
  	<header id="signup1">	
  <div class="container"  style="padding-top:10px;margin-top:5px;padding-bottom:10px;">
  	<div class="row">
  		<div class"col-md-6 col-md-offset-3" id="form">
  		<center><b class="register">SignUp into Techuiz~</b></center>
  		<form method="POST" action="SignUp">
  		 <div class="form-group">  		 
  		 <label>Name :</label>
  		 <input type="text" name="name" class="form-control text" placeholder="Enter name" required/>
  		 </div>
  		 <div class="form-group">  		 
  		 <label>Email :</label>
  		 <input type="email" name="email" class="form-control text" placeholder="Enter email" required/>
  		 </div>
  		 <div class="form-group">  		 
  		 <label>Password :</label>
  		 <input type="Password" name="pass" class="form-control text" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" required/>
  		 </div>
  		 <div class="form-group">  		 
  		 <label>Contact No :</label>
  		 <input type="number" name="mobile" class="form-control text" placeholder="Enter Contact no" required/>
  		 </div>
		<br/>  		
  		 <div class="form-group">  		 
  		 <input type="submit" class="btn btn-primary" value="Submit">
  		 <input type="reset" class="btn btn-danger" value="Reset">
  		 
  		 </div>
  		</form>
  		</div> 
  	</div>
  </div>
  


</header>
<footer class="footer"  >
          <div class="container" style="max-width:100%;padding-top:5px;">
            <div class="row" style="text-align:center;background-color:#d9d9d9;">
              <div class="col-md-4 col-sm-12 footer-message">
                  <h5 class="footer-header" id="abt1">About Us</h5>
                  <div class="footer-body">This website gives a platform from Teachers to students,anyone to host their own examination question and get detailed result till they improve.</div>
              </div>
              <div class="col-md-4 col-sm-12 footer-message" >
                  <h5 class="footer-header">Join Us Today!</h5>
                  <div class="footer-body">What are you waiting for? Sign up <a id="link" href="signup.jsp">here</a> today and either create questions for your student or take exam on any subjects available, today!</div>
              </div>
              <div class="col-md-4 col-sm-12 footer-message">
                  <h5 class="footer-header" style="padding-bottom:3px;">Social Media</h5>
                  
					<a href="#" class="fa fa-facebook"></a>
					<a href="#" class="fa fa-twitter"></a>
					<a href="#" class="fa fa-linkedin"></a>                                                 
              </div>
            </div>
          
        <div class="footer-bottom">
            <div class="container-footr">
              <div class="row" >
                  <div>
                    <div class="footer-copyright" >
                      Copyright &copy; 2018 Techuiz. Designed and Developed by <a href="http://biswadeb.epizy.com" target="_blank">Biswadeb Mukhopadhyay</a>.
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
