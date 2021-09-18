<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<body>

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

	<h2>${msg }</h2>
	<s:form method="post" modelAttribute="enquiry"
		action="${pageContext.request.contextPath }/enquiry/send">

		<table align="center">
			<tr>
				<td>Name</td>
				<td><s:input path="name" /></td>
			</tr>
			<tr>
				<td>Phone</td>
				<td><s:input path="phone" /></td>
			</tr>
			<tr>
				<td>Email</td>
				<td><s:input path="email" /></td>
			</tr>
			<tr>
				<td valign="top">Query</td>
				<td><s:textarea path="query" rows="5" cols="20"/></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="send" /></td>
			</tr>
		</table>
	</s:form>
	

</body>
</html>