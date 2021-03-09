<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/security/tags" prefix="sec" %>
<%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Painscript-Reports</title>
<link rel="stylesheet"
	href="<c:url value="/resources/css/reports.css"/>">
</head>
<body>
	<div class="wrapper">
		<div class="topheader">
			<img class="logo alt="Logo" src="<c:url value="/resources/Api/images/pain-script-logo-blu-blk.png"/>">
			<div class="info">
				<h4>Welcome <sec:authentication property="name"/></h4>
				<form action = "<c:url value="/logout"/>" method="post"> 
				<sec:csrfInput/>
				<a class="button" onclick="this.parentNode.submit();">
				<img class="icon" src="<c:url value="/resources/Api/images/logout.png"/>">
					<div class="logout">LOGOUT</div>
					</a>
				</form>
			</div>
		</div>
		<div class="content">
			<ul>
				<li><a href="<c:url value="/resources/Api/apiReports.html"/>" target="_blank">API Reports</a></li>
				<li><a href="<c:url value="/resources/Web-app/webReports.html"/>" target="_blank">Web app Reports</a></li>
			</ul>
		</div>
	</div>
</body>
</html>