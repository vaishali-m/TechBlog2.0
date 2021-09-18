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
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
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


<h1 align="center">${ek}</h1>
<form action="addblog" method="post">
		<table cellpadding="10" cellspacing="10" border=10 align="center"
			bgcolor="ctan">
			<tr>
				<td>blogId</td>
				<td><input type="text" name="blogId"></td>
			</tr>
			<tr>
				<td>blogTitle</td>
				<td><input type="text" name="blogTitle"></td>
			</tr>
			<tr>
				<td>blogContent</td>
				<td><textarea id="w3review" name="blogContent" rows="40" cols="50"></textarea></td>
			</tr>
			<!-- <tr>
				<td>blogContent</td>
				<td><input type="text" name="blogContent"></td>
			</tr> -->
			<tr>
				<td>blogAuthor</td>
				<td><input type="text" name="blogAuthor"></td>
			</tr>
			<tr>
				<td>blogImage</td>
				<td><input type="text" name="blogImage"></td>
			</tr>
			<tr>
				<td>blogDate</td>
				<td><input type="Date" name="blogDate"></td>
			</tr>
			<tr>
				<td>blogSlug</td>
				<td><input type="text" name="blogSlug"></td>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="addBlog"></td>
			</tr>
		</table>
	</form>
<a href="home">Show all Blogs</a>
</body>
</html>