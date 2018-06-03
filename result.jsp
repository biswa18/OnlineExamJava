<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@page import="java.sql.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page import="java.util.*"%>
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
.res{
	padding-right:10px;
	margin:auto;
	text-align:center;
	min-height:70%;
	 width: 40%;
    border: 10px solid black;
    margin: 25px;
	padding-left:15px;
	padding-bottom:10px;
	text-align:left;
	margin:0 auto;
	
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
  	<form action="StudentLogoutServlet" method="post"> 	Hello ${sessname},	<input type="submit" value="Logout" name="logout"/>
	</form>	    
	</div>
	<br/><br/>
</header>
 <hr style="border:0.5px solid lightblue;margin-top:auto;">
 
<div class="res">
<h2>Result Summary: </h2>
<form action="PrevRes.jsp" method="post">
<%
String aid[]= new String[5];
String qid[] = new String[5];
for(int i=0;i<5;i++)
{
  String temp = request.getParameter("opt"+(i+1));
  if(temp=="null")
  {
  	aid[i]="0";
  }
  else{
	aid[i] = temp;
  }
  qid[i]=request.getParameter("qid"+(i+1));
  
  
}
int correct=0,total=0;

	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "nivt", "1234");
		Statement stmt=con.createStatement();
		
		for(int i=0;i<5;++i)
		{
			PreparedStatement ps = con.prepareStatement("select * from addques where qid=?");
			ps.setString(1, qid[i]);
			
			ResultSet rs = ps.executeQuery();
			if(rs.next())
			{
				out.println("</br>");
				out.println("Actual Answer: " + rs.getString("correctopt"));	
				out.println("</br>");
				out.println("User Answer: " + aid[i]);
				out.println("</br>");
	
				if(rs.getString("correctopt").equals(aid[i])){
					
					correct+=2;
					
				}
			}
		}
			/*code for database con*/
			
		out.println("</br>");
		out.println("You got "+correct+" marks out of 10.");
		out.println("</br>");
		if(correct>=5)
		{
			out.println("Congratulations! You have passed the test.");
		}
		else
		{
			out.println("You have failed to pass the test!");
		}
	}
	catch(Exception e)
	{
		System.out.print(e);
	}
	/*connection param*/
	String sess=(String)session.getAttribute("sessname");
	String sess1=(String)session.getAttribute("lang");
	String lang=request.getParameter("lang");
	int ttl=10;
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "nivt", "1234");
		Statement stmt=con.createStatement();
		PreparedStatement ps = con.prepareStatement("insert into userres(userid,umail,obtmarks,ttlmarks,lang,curdate) values(user_res.NEXTVAL,?,?,?,?,sysdate)");
		ps.setString(1,sess);
		ps.setString(2,String.valueOf(correct));
		ps.setString(3,String.valueOf(ttl));
		ps.setString(4,sess1);
		ps.executeUpdate();
	}
	catch(Exception E)
	{
		E.printStackTrace();
	}
		%>
	</br>
<!-- <input type="submit" value="Check your results" /> -->
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