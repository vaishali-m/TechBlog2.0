<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<c:url value="/css/login.css" var="jstlCss" />
<link href="${jstlCss}" rel="stylesheet">
<!-- <style>
<link href="/css/login.css" rel="stylesheet" >
</style> -->
<style type="text/css">
.row:after {
	content: "";
	display: table;
	clear: both;
}

.rightcolumn {
	float: left;
	width: 25%;
	padding-left: 20px;
}
/* .card {
  background-color: white; 
 padding: 20px;
  margin-top: 20px; 
}  */
body  {
  background-repeat: no-repeat;
  background-attachment: fixed;
}

</style>
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
	

	
	<div align="center">
		<c:forEach items="${listKey}" var="blog">
			<div class="row">
				<div class="leftcolumn">
					<div class="card">
						<h1>
							<a href="singleblog/${blog.blogSlug}" style="color: highlight;">${blog.blogTitle }</a>
						</h1>
						<span style="display:inline-block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 20ch;">
 			${blog.blogContent}
                          </span>
						<h3>Written By: ${blog.blogAuthor}</h3>
						<h5>${blog.blogDate}</h5>
						<br>
						<hr style="width:50% ">
					</div>
		</c:forEach>
	</div>

</body>
</html>