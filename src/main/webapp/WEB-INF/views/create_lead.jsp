<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ include file = "menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Lead | Create</title>
</head>
<body>
	<h2>Create Lead here...</h2>
	<hr>
	<div>
		${emailError}
	</div>
	<form action="saveLead" method="post">
		<pre>
			First Name: <input type="text" name="firstName"/>
			Last Name: <input type="text" name="lastName"/>
			Lead Source: <select name="leadSource">
						 	<option value="Radio Channel">Radio Channel</option>
						 	<option value="News Paper">News Paper</option>
						 	<option value="TV">TV</option>
						 	<option value="Online">Online</option>
						 </select>
			E-mail: <input type="email" name="email"/>
			Mobile No: <input type="text" name="mobile"/>			 
			<input type="submit" value="Save"/>
		</pre>
	</form>

</body>
</html>