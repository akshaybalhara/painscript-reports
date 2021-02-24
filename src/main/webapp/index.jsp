<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 

<html>
<title>Reports-Login</title>
<head>
<!-- <link rel="stylesheet" href="./WEB-INF/style/login.css"> -->
<link rel="stylesheet" href="<c:url value="/resources/css/loginstyle.css"/>">
</head>
<body>
<div class="login">
  <h1>Login</h1>
    <form action="reports" method="post" modelAttribut="user">
      <input type="text"  placeholder="Username" required="required" name="username"/>
        <input type="password"  placeholder="Password" required="required"  name="password" />
        <button type="submit" class="btn btn-primary btn-block btn-large" id="submit" value="LOGIN">Log In</button>
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
