<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
    
    <style type="text/css">
  
    .myDiv,.create1
    {
     padding: 10px 0;
     text-align:center;
    border: 3px solid green;
    text-align: center; 
    }
  body
  {
  background:Cornsilk;
  }
  a:hover 
  {
    text-shadow:2px 2px 4px #FFFFFF;   
	}
	.btns{
	display:block;
	position:reltive;
	}
	.srch{
	float : left;
	display: block;
	position:relative;
	padding-left:10px;
	}
	form{
	display:inline;}
    </style>      
  </head> 
  <body >
<% response.setHeader("Cache-control", " no-cache, no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "-1"); %>
 <div class='w3-container top'>
  <a class='w3schools-logo w3-small' href='#'>TECHUIZ<span class='dotcom'></span></a>
  <div class='w3-right w3-hide-small w3-wide toptext' style="font-family:'Segoe UI',Arial,sans-serif">TEST YOUR TECHNICAL SKILLS</div>
</div>
  
 <nav  class="navbar navbar-expand-sm  navbar-dark menubar">
 <div class="container-fluid navbar ">
  <form action="AdminLogoutServlet" method="post"> 
	<input type="submit" value="Logout" name="logout"/>
	</form>
	    
   </div>   
</nav>

<header id="welcome">
<table >

<%
String userid=(String)session.getAttribute("sessname"); 
out.print("Hello "+userid); 
%>


<h2 align="center">Create your own questions here~~</h2>
<div id="create1">
<center>
<div id="myDIV" style="padding-top:30px;">
<!-- 
<form action="ViewServ" method="post">
<div class="srch">
<input type="text" name="srchbyid" placeholder="enter question id"/>
<input type="submit" value="view"/>
</div>
</form> -->

<form method="post" action="AddQues">
<br/><br/>
<p style="margin:0 auto;text-align:center;">Choose the language first :</p>
<select name="lang">
  <option value="C">C</option>
  <option value="cpp">C++</option>
  <option value="java">Java</option>
  <option value="html">HTML</option>
  <option value="network">Computer Networking</option>  
</select><br/>
<br/><p style="text-align:center;">Enter Question:</p>
<textarea name="ques" rows="3" cols="50" value="${ques} "></textarea><br/>
<ul class="answers" style=" display: block;margin-left: auto;margin-right: auto;text-align:center;">
<p>Option 1:</p><input type="radio" name="opt" value="1">
<textarea name="opt1" rows="3" cols="50"></textarea>
<p>Option 2:</p><input type="radio" name="opt" value="2">
<textarea name="opt2" rows="3" cols="50"></textarea>
<p>Option 3:</p><input type="radio" name="opt" value="3">
<textarea name="opt3"  rows="3" cols="50"></textarea>
<p>Option 4:</p><input type="radio" name="opt" value="4">
<textarea name="opt4" rows="3" cols="50"></textarea>

</ul>
  <div class="w3-show-inline-block">
<input type="submit" value="Add" />
<!-- 
<form action="EditServ" method="post">
<input type="submit" value="Edit" />
</form> -->
<!-- 
<form action="DelServ" method="post">
<input type="submit" value="Delete" />-->
</div>
<!-- </form>  -->

</form>
</div></center>
</div>
</table>
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
     <script type="text/javascript" src="jsfunc.js"></script>
  <script>
   windows.history.forward();
</script>
</body>
</html>