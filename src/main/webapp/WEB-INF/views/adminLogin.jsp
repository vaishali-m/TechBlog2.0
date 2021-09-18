<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/css/login.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<style type="text/css">
body {
	background-repeat: no-repeat;
	background-attachment: fixed;
}
</style>

<script src="/javascript/login.js"></script>


<meta charset="ISO-8859-1">
<title>The Blog</title>
</head>
<body>

	${errorKey}
	<div class="container" style="margin-bottom: 12rem">
		<nav>
			<input type="checkbox" id="nav" class="hidden"> <label
				for="nav" class="nav-btn"> <i></i> <i></i> <i></i>
			</label>
			<div class="logo">
				<a href="home"> TECH BLOG </a>

			</div>
			<div class="nav-wrapper">
				<ul>
					<!-- <li><a href="AdminLogin.html">Admin </a></li> -->
					<li><a href="adminLogin">Admin </a></li>
					<li><a href="enquiry">Query </a></li>
					<li><a href="aboutUS">AboutUs </a></li>
				</ul>
			</div>
		</nav>
	</div>
	
	
	<form action="adminloginurl" method="post">
		<table cellpadding="10" cellspacing="10" border=10 align="center"
			bgcolor="ctan">
			<tr>
				<td>Username</td>
				<td><input type="text" name="adminUsername"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="Password" name="adminPassword"></td>
			</tr>


			<tr>
				<td><input type="submit" name="Sign In" value="Sign In" /></td>
				<td><input type="button" value="SignUp"></td>
			</tr>

		</table>
	</form>
</body>
</html>