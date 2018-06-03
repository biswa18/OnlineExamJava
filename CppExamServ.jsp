<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
<link href="formstyle.css" rel="stylesheet" type="text/css" />

<style>
 p{
 padding-left:20px;
 padding-top:5px;
 }
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
footer{
 position:absolute;
   bottom:0;
   width:100%;
   height:60px;   /* Height of the footer */   
}
body {
        min-height:100%;
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
    list-style-position: inside;
    margin:0px auto;}
    li{
   
    list-style-type:none;
    list-style-position: inside;
    margin-left:5px;
    padding-left:10px;
    justify-content:center;
    }
    form{    
    display:inline-block;
    }
    .ques{
    text-align:left;
    left:0;}
    .test{
    text-align:left;
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
 <div id="top" style="float:left;padding-right:10px;margin-right:auto;"> 	
  	<p> Time Remaining: <span id="countdowntimer">150 </span> Seconds</p>
</div>		
   <div id="topleft" style="float:right;padding-right:10px;margin-right:auto;"> 	
  	<form action="StudentLogoutServlet" method="post"> 
  	Hello ${sessname},	<input type="submit" value="Logout" name="logout"/>
	</form>	    
	</div>
	<br/><br/>
</header>
 
<div style="height:100% !important;text-align:center;margin-top:auto;">
<hr style="border:0.5px solid blue;"><h2 style="padding-top:5px;">Answer all the following questions - </h2></hr>
<% 
try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "nivt", "1234");
			  
	        session.setAttribute("lang","C++");  
			PreparedStatement ps = con.prepareStatement("select * from ( select * from addques where lang='cpp' order by dbms_random.value ) where rownum <= 5 ");
		
			int count=0;
			ResultSet rs = ps.executeQuery(); %>
			<form id="quiz1" action="result.jsp" method="post">
			<% 
			while(rs.next()){
				%>
				<% ++count; %>
				<div class="exampaper" style="text-align:center;margin-left:auto;margin-right:auto;width:600px;">				
								
				<div class="ques">
				<span style="font-weight:bold;">Ques <%=count %>: </span><%=rs.getString("ques").replace("\n","<br/>") %></br>
				</div>
				<input type="text" hidden value="<%=rs.getString("qid") %>" name="qid<%=count %>" />
				<ul class="list-inline test">
				<li class="list-inline-item"><input type="radio" align="left" name="opt<%=count %>" value="1"> A. <%=rs.getString("opt1") %></li></br>
				<li class="list-inline-item"><input type="radio" align="left" name="opt<%=count %>" value="2"> B. <%=rs.getString("opt2") %></li></br>
			    <li class="list-inline-item"><input type="radio" align="left" name="opt<%=count %>" value="3"> C. <%=rs.getString("opt3") %></li></br>
				<li class="list-inline-item"><input type="radio" align="left" name="opt<%=count %>" value="4"> D. <%=rs.getString("opt4") %></li></br>
				
				</ul>
				
				</div><br/>
				
				
				<%
				}
		
				}
				catch (Exception e) {
				e.printStackTrace();
				}
				%>
						<input type="submit" value="Submit" onclick="confirm()" />
				</form>							
</div>

	<footer class="footer" >
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
	<script type="text/javascript">
    var timeleft = 150;
    var downloadTimer = setInterval(function() 
    {
	    timeleft--;
	    document.getElementById("countdowntimer").textContent = timeleft;
	    if(timeleft <=30)
	    	document.getElementById("countdowntimer").style.color="red";
	    if(timeleft <= 0)
	    {
	        clearInterval(downloadTimer);
	        //submit action here
	        alert('Time over!');
	        $('#quiz1').submit();
	    }
    },1000);
    
    function confirm()
    {
    alert('Exam submitted successfully!');
    }
</script>
</body>
</html>