<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
			<div class="info">
				<h4>Welcome ${name}</h4>
				<a href="/painscript-reports/"><img src="<c:url value="/resources/images/logout.jpg"/>" alt="logout"></a>
			</div>

		</div>
		<div class="content">
			<ul>
				<li><a href="<c:url value="/resources/apiReports.html"/>">API Reports</a></li>
				<li><a href="#">Web app Reports</a></li>
			</ul>
		</div>
	</div>
</body>
</html>