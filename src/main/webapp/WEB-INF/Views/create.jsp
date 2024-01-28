<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>	

<form action="create" method="post">
<pre>
    <strong>Create Here | <a href="./read">Click for Read</a></strong>
		
	Name: <input type="text" name="name" />
	
	Email: <input type="text" name="email" />
	
	Course: <input type="text" name="course" />

	<input type="submit" value="Create" />
</pre>
</form>
<%=request.getAttribute("msg") %>
</body>
</html>