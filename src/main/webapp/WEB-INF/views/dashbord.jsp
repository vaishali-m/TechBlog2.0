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
	${ek}

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


	<a href="regi">
		<button>Add Blog</button>
	</a>
	<table border="1" align="center">
		<th>Blog_id</th>
		<th>BlogTitle</th>
		<th>BlogContent</th>
		<th>BlogAuthor</th>
		<th>BlogImage</th>
		<th>BlogDate</th>
		<th>BlogSlug</th>
		</tr>
		<c:forEach items="${listKey}" var="blog">
			<tr>
				<td>${blog.blogId}</td>
				<td><a href="singleblog/${blog.blogSlug}">${blog.blogTitle }</a></td>
				<td><span
					style="display: inline-block; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; max-width: 50ch;">
						${blog.blogContent} </span></td>
				<td>${blog.blogAuthor}</td>
				<td>${blog.blogImage}</td>
				<td>${blog.blogDate}</td>
				<td>${blog.blogSlug}</td>
				<td><a href="edit/${blog.blogSlug}">
						<button>Edit</button>
				</a></td>
				<td><a href="delete/${blog.blogSlug}">
						<button>Delete</button>
				</a></td>
			</tr>
		</c:forEach>

	</table>

</body>
</html>