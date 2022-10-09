<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Bill</title>
</head>
<body>
	<h2>Search Bill...</h2>
	<hr>
	<table border = "1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
			<th>Lead Source</th>
			<th>E-mail</th>
			<th>Mobile No.</th>
			<th>Product Name</th>
			<th>Amount</th>
		</tr>
		<c:forEach items="${bills}" var="bill">
			<tr>
				<td><a href = "showBill?id=${bill.id}">${bill.firstName}</a></td>
				<td>${bill.lastName}</td>
				<td>${bill.leadSource}</td>
				<td>${bill.email}</td>
				<td>${bill.mobile}</td>
				<td>${bill.productName}</td>
				<td>${bill.amount}</td>
			</tr>
		</c:forEach>
	</table>

</body>
</html>