<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Enquiry Form</title>
</head>
<body>
	${msg }
	<h3>Enquiry Form</h3>

	<s:form method="post" modelAttribute="enquiry"
		action="${pageContext.request.contextPath }/enquiry/send">

		<table>
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