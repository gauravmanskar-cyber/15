<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<body>
<%@ include file="header.jsp" %>


<!--  
<table border="2" >
	 <tr>
	 	<th>Id</th>
	 	<th>FullName</th>
	 	<th>Eamil</th>
	 	<th>Password</th>
	 	<th>Address</th>
	
	 	
	 </tr>
	 
	 <c:forEach var="s" items="${Student}">
	 <tr>
	 	<td>${s.id}</td>
	 	<td>${s.fullname}</td>
	 	<td>${s.email}</td>
	 	<td>${s.password}</td>
	 	<td>${s.address}</td>
	 	<td>
	 		<a href="deletestudent/${s.id}">delete</a>
	 		<a href="profileedit/${s.id}">profileEdit</a>
	 		
	 			
	 	 </td>
	 </tr>
	 </c:forEach>
	 
	
	
	</table> -->
	
	

<div class="container mt-4">
    <h2 class="text-center mb-4">Student Details</h2>

    <table class="table table-bordered table-striped table-hover">
        <thead class="table-dark text-center">
            <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>Email</th>
                <th>Password</th>
                <th>Address</th>
                <th>Actions</th>
            </tr>
        </thead>

        <tbody>
            <c:forEach var="s" items="${Student}">
            <tr class="text-center">
                <td>${s.id}</td>
                <td>${s.fullname}</td>
                <td>${s.email}</td>
                <td>${s.password}</td>
                <td>${s.address}</td>

                <td>
                    <!-- Edit Profile -->
                    <a href="/profileedit/${s.id}" 
                       class="btn btn-primary btn-sm">
                        Edit
                    </a>

                    <!-- Delete -->
                    <a href="/deletestudent/${s.id}" 
                       class="btn btn-danger btn-sm"
                       onclick="return confirm('Are you sure want to delete this record?');">
                        Delete
                    </a>
                </td>
            </tr>
            </c:forEach>
        </tbody>
    </table>
</div>
	

</body>
</html>