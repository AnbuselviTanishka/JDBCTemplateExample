<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="com.spring.springjdbc.StudentJdbc.model.*" %>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h2>Spring MVC Create, Read, Update and Delete (CRUD) Example</h2>
	<p><strong>Student List is Here | <a href="create.jsp">Click for Create</a></strong></p>
	
	
	<table border="1">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Course</th>
			<th>Action</th>
		</tr>
		  <%ArrayList<Student> std =  
            (ArrayList<Student>)request.getAttribute("listStudent"); 
        for(Student s:std){%> 
        <%-- Arranging data in tabular form 
        --%> 
            <tr> 
                <td><%=s.getId()%></td> 
                <td><%=s.getName()%></td> 
                <td><%=s.getEmail()%></td> 
                <td><%=s.getCourse()%></td>
                <td><a href="update/<c:out value='${student.id}'/>">Update</a> | <a
					href="delete/<c:out value='${student.id}'/>">Delete</a></td>
            </tr> 
            <%}%> 
		
	</table>
</body>
</html>