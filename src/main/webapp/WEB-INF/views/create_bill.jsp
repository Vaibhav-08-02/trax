<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Billing | Create</title>
</head>
<body>
	<h2>Create Bill here...</h2>
	<hr>
	
	<form action="saveBill" method="post">
		<pre>
			First Name: <input type="text" name="firstName" value="${contact.firstName}" readonly/>
			Last Name: <input type="text" name="lastName" value="${contact.lastName}" readonly/>
			Lead Source: <input type="text" name="leadSource" value="${contact.leadSource}" readonly/>
			E-mail: <input type="email" name="email" value="${contact.email}" readonly/>
			Mobile No: <input type="text" name="mobile" value="${contact.mobile}" readonly/>
			Product Name: <input type="text" name="productName"/>
			Amount: <input type="text" name="amount"/>			 
			<input type="submit" value="Save Bill"/>
		</pre>
	</form>
	
	${bill_msg}

</body>
</html>