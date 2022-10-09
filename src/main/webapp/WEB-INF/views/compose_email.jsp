<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compose E-mail</title>
</head>
<body>
	<h2>Compose E-mail...</h2>
	<hr>
		<form action="sendEmail">
			<pre>
				To: <input type="email" name="to" value="${email}" readonly/>
				Subject: <input type="text" name="subject"/>
				<textarea name="body" rows="30" cols="70"></textarea>
				<input type="submit" type="Send E-mail"/>
			</pre>
		</form>
		</br>
		${em_msg}

</body>
</html>