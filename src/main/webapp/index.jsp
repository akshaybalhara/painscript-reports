<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>

<html>
<title>Reports-Login</title>
<head>
<link rel="stylesheet" href="<c:url value="/resources/css/loginstyle.css"/>">
</head>
<body>
<div class="login">
  <h1>Login</h1>
  <c:url value="/login" var="loginVar"/>
    <form action="${loginVar}" method="post" modelAttribut="user">
      <input type="text"  placeholder="Username" required="required" name="username"/>
        <input type="password"  placeholder="Password" required="required"  name="password" />
        <sec:csrfInput/>
        <c:if test="${param.error !=null}">
        <p>Invalid user credentials</p>
        </c:if>
        <button type="submit" class="btn btn-primary btn-block btn-large" id="submit" value="LOGIN">Log In</button>
    </form>

</div>
</body>
</html>
