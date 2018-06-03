<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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

.button {
  padding: 15px 25px;
  font-size: 24px;
  text-align: center;
  cursor: pointer;
  outline: none;
  color: #fff;
  background-color: #4CAF50;
  border: none;
  border-radius: 15px;
  box-shadow: 0 9px #999;
}
.button:hover {background-color: #3e8e41}
.button:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}
a:hover {
	text-shadow: 2px 2px 4px #000000;
}
button, .button{

}
.footer{
 position:absolute;
   bottom:0;
   width:100%;
   height:60px;   /* Height of the footer */   
}
body {
        height:100%;
        margin: 0 auto;
        padding: 0;
        background:AliceBlue ;
    }
.quiz2{
    max-height:800px;
    max-width:100%;
    margin:0 auto;
    }  
    ol{
    padding-top:20px;
    display:inline;
    text-align:left;
    list-style-position: inside;
    margin:0px auto;}
    li{
    list-style-position: inside;
    margin-left:5px;
    padding-left:10px;}
    form{    
    display:inline-block;
    }
</style>
</head>
<body  >
<div class='w3-container top'>
		<a class='w3schools-logo w3-large' href='#' style="display:flex;float:left;">TECHUIZ<span class='dotcom'></span></a>
		<div class='w3-right w3-hide-small w3-wide toptext'	style="float:right;font-family:'Segoe UI',Arial,sans-serif;display:block;padding-right:10px;">TEST YOUR TECHNICAL SKILLS</div>
		<div id="txt" style="text-align:center;margin-left: auto;margin-right: auto;display:block;padding-left:10px;"></div>
	</div>
	
 <header class="quiz2">  	
   <div id="top" style="float:right;padding-right:10px;margin-right:auto;"> 	
  	<form action="StudentLogoutServlet" method="post"> 
  	Hello ${sessname},	<input type="submit" value="Logout" name="logout"/>
	</form>	    
	</div>
	<br/><br/>
</header>
 <hr style="border:0.5px solid lightblue;margin-top:auto;">
 <h3  style="text-align:left;color:brown;font-size:18px;padding-left:20px;">Instructions :<br>
 <ol>
 <li>The exam section consists of basic questions of the particular subject.</li>
 <li>Each of the question is Multiple Choice Question(MCQ) type.</li>
 <li>There are total of 5 questions with each carrying 2 marks.There is no negative marking.</li>
 <li>Candidates need to answer of all the given questions within given time which is 2.30 mins or 150 seconds.</li>
 <li>Don't press refresh or back button of your browser during the exam time.</li> 
 </ol>
 </h3></hr>
<div style="height:400px auto;text-align:center;padding-top:5px;margin-top:auto;">
<hr style="border:0.5px solid blue;"><h2 style="padding-top:5px;">Choose a subject - </h2></hr>
<form action="exampage.jsp" method="post">
<button class="button">C </button>
</form>
<form action="CppExamServ.jsp" method="post">
<button class="button" >C++</button>
</form>
<form action="HtmlExam.jsp" method="post">
<button class="button">HTML</button>
</form>
<form action="JavaExamServ.jsp" method="post">
<button class="button">Java</button>
</form>
<form action="NetworkExam.jsp" method="post">
<button class="button">Computer Networking</button>
</form>
</div>

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