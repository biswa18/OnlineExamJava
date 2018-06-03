<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
<head>

<title>Techuiz</title>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link href="static/css/bootstrap.min.css" rel="stylesheet"	type="text/css" />
<link rel="stylesheet" href="static/font-awesome/css/font-awesome.min.css" type="text/css" />
<link rel="stylesheet" href="static/w3.css">
<link href="style1.css" rel="stylesheet" type="text/css" />
<style>
body{
     background-attachment: fixed;
}
a:hover {
	text-shadow: 2px 2px 4px #000000;
}
.navbar{
max-width:100%;
}
</style>
</head>
<body onload="startTime()"> 

	<div class='w3-container top'>
		<a class='w3schools-logo w3-large' href='#' style="display:flex;float:left;">TECHUIZ<span class='dotcom'></span></a>
		<div class='w3-right w3-hide-small w3-wide toptext'	style="float:right;font-family:'Segoe UI',Arial,sans-serif;display:block;padding-right:10px;">TEST YOUR TECHNICAL SKILLS</div>
		<div id="txt" style="text-align:center;margin-left: auto;margin-right: auto;display:block;padding-left:10px;"></div>
	</div>
	
<!-- Menubar -->

	<nav class="navbar navbar-expand-sm">
		<div class="container-fluid navbar menubar">
			<ul class="nav navbar-nav">
				<li class="nav-item active"><a class="nav-link"
					href="index.jsp">Home</a></li>
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
				<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown"> Login As </a>
					<div class="dropdown-menu">
						<a class="dropdown-item" href="AdminLogin.jsp">Admin</a> <a
							class="dropdown-item" href="StudentLogin.jsp">Student</a>
					</div></li>
			</ul>
		</div>
	</nav>
	<div class="slider">
		<img id="image" class="bckimg1" src="desktop.jpg">
	</div>
	<div class="leftbar"></div>
	<header id="index1">
		<div class="vc_row wpb_row vc_row-fluid">
			<div class="vc_col-sm-8 wpb_column vc_column_container">
				<div class="wpb_wrapper">
				
	<img style="height:100px;width:100px;float:left;margin-top:50px;display:inline-block;margin-left:50px;" src="c.png"/>
	<img style="height:100px;width:100px;float:left;margin-top:250px;display:inline-block;margin-left:-100px;" src="c++.png"/>
	<img style="height:100px;width:100px;float:left;margin-top:450px;display:inline-block;margin-left:-100px;" src="html.jpg"/>
	<img style="height:100px;width:100px;float:right;margin-top:50px;display:inline-block;margin-right:50px;" src="java.jpg"/>
	<img style="height:100px;width:100px;float:right;margin-top:250px;display:inline-block;margin-right:-100px;" src="networking.jpg"/>
	<img style="height:100px;width:100px;float:right;margin-top:450px;display:inline-block;margin-right:-100px;" src="oracle.jpg"/>
			
					<table>
						<tr>
							<div class=" col-md-6 align-middle wpb_text_column wpb_content_element text-white  "
								style="max-width: 50%; margin-top: 5px !important; padding-top: 10px !important; padding-bottom: 10px !important; background-color: AntiqueWhite; display: table; opacity: 0.9; margin: 0 auto;">
								<div class="wpb_wrapper">
									<p style="text-align: justify;">
										<span class="pagelist" style="color: black !important;">Online
											examination is the trending technique used to conduct an
											examinations through internet. The formal examination system
											has a very long procedure to conduct an examination.
											Moreover, it is a very costly and an extremely tedious
											system. On the other hand, online examination system is a
											very sophisticated system for conducting examinations.
											Recruiters and educational institutes can save considerable
											time and money by using this system.</span>
									</p>
									<p style="text-align: justify;">
										<span class="pageheading" style="color: #000;"><b>Benefits
												of Online Examination System</b></span>
									</p>
									<ol class="pagelist"
										style="color: black !important; text-align: justify;">
										<li>Online examination system is cost-effective because
											it saves money on printing the question papers. In addition,
											it also saves transport and logistics expenses for conducting
											examinations across different geographic locations.</li>
										<li>Online examination system maintains confidentiality
											and avoids paper leaks. It randomizes the sequence of
											questions for each student, therefore no two students will
											see the same question at the same time. Moreover, no data
											loss takes place even in the event of internet and power
											failure.</li>
										<li>Candidates can take the examination as per their
											convenience because this exam can be conducted 24&#215;7. In
											addition, candidates can see their results immediately after
											submitting their answers.</li>
										<li>Online examination system can store data for
											comparison in subsequent years.</li>
										<li>It helps to save a considerable amount of paper.</li>
										<li>Online examination system offered in this website is
											perhaps the simplest to use web-based application for
											colleges, schools, universities, training centres, coaching
											classes and recruitment firms to conduct completely
											automated, time-based and paperless examination.</li>
									</ol>
									<p style="color: black; text-align: justify;">
										<span class="pageheading" style="color: #000;"><b>Why
												Us?</b></span>
									</p>
									<ol class="pagelist" style="color: black;">
										<li>This online examination system is the simplest to use
											web-based application for colleges, schools, universities,
											training centres, coaching classes and recruitment firms to
											conduct completely automated, time-based and paperless
											examination.</li>
										<li>24 hours support available for technical or
											non-technical purpose(s).</li>
										<li>User friendly interface.</li>
									</ol>

								</div>
							</div>
						</tr>
					</table>
				</div>
			</div>
	</header>
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
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="static/js/bootstrap.min.js"></script>
	<script src="jsfunc.js"></script>
	

</body>
</html>