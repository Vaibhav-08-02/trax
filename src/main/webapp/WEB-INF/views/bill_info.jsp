<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing | Info</title>
</head>
<body>
	<h2>Billing Info...</h2>
	<hr>
	Contact ID: ${bill.id}<br/>
	First Name: ${bill.firstName}<br/>
	Last Name: ${bill.lastName}<br/>
	Lead Source: ${bill.leadSource}<br/>
	E-mail: ${bill.email}<br/>
	Mobile No: ${bill.mobile}<br/>
	Product Name: ${bill.productName}<br/>
	Amount: ${bill.amount}
	
</body>
</html>