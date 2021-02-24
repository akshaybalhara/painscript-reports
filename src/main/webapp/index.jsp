<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<html>
<title>Reports-Login</title>
<head>
<!-- <link rel="stylesheet" href="./WEB-INF/style/login.css"> -->
<style type="text/css">
body{
	background-color: #C0FBE1;
}
.login_form{
	width:30%;
	height:40%;
	margin:auto;
	padding:auto;
}
#submit
{
  background-color: #4CAF50 ;
  font-size:20;
  width:310;
  height:35;
 border-radius:12px;
 border: 0px;
}
table{
margin:auto;
}
td{
padding:5px;
font-size: large;
}

</style>
</head>
<body>
<div class="login_form">
<form action="reports" method="post" modelAttribut="user">
<table>
<tr><td colspan="2"><center><b><font size="20">Painscript-Reports</font></b></center></td></tr>
<tr><td><b>Username:</b></td><td> <input type="text" name="username"></td><tr>
<tr><td><b>Password: </b></td><td> <input type="password" name="password" ></td></tr>
<tr><td colspan="2"><input type="submit" id="submit" value="LOGIN" ></td></tr>
</table>
</form>
<!--  
<center><h1>LOGIN</h1></center>

Username <input type="text" name="name"/><br><br>
Password <input type="password" name="password"/><br><br>
<button type="submit">SUBMIT</button>

-->
</div>
</body>
</html>
