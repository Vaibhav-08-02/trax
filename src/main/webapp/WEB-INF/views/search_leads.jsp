<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Lead</title>
</head>
<body>
	<a href = "viewLSaveLeadPage">Create Lead</a>
	<h2>Search Lead...</h2>
	<hr>
	<table border = "1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Lead Source</th>
			<th>E-mail</th>
			<th>Mobile No.</th>
		</tr>
		<c:forEach items="${leads}" var="lead">
			<tr>
				<td><a href = "showLead?id=${lead.id}">${lead.firstName}</a></td>
				<td>${lead.lastName}</td>
				<td>${lead.leadSource}</td>
				<td>${lead.email}</td>
				<td>${lead.mobile}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>