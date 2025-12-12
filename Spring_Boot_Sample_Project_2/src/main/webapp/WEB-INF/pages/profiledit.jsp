<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</head>
<body>
<!--  
<form action="profiledit" method="post">
	<input type="hidden" name="id" value="${Student.id}"><br><br>
	<input type="text" name="fullname" placeholder="Enter full name" value="${Student.fullname}"><br><br>
	<input type="email" name="email" placeholder="Enter email" value="${Student.email}"><br><br>
	<input type="password" name="password" placeholder="Enter password" value="${Student.password}"><br><br>
	<textarea name="address" placeholder="Enter Address">${Student.address}</textarea><br><br>
	
	<button type="submit">Submit</button>
	</form> -->
	
	<div class="container mt-5">

    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow-lg">
                <div class="card-header text-center bg-primary text-white">
                    <h3>Profile Edit Form</h3>
                </div>

                <div class="card-body">
                    <form action="/profileedit" method="post"> 

                        <!-- Full Name -->
                        <input type="hidden" name="id" value="${Student.id}"><br><br>
                        <div class="mb-3">
                            <label class="form-label">Full Name</label>
                            <input type="text" class="form-control" name="fullname" placeholder="Enter your full name" value="${Student.fullname}">
                        </div>

                        <!-- Email -->
                        <div class="mb-3">
                            <label class="form-label">Email Address</label>
                            <input type="email" class="form-control" name="email" placeholder="Enter your email" value="${Student.email}">
                        </div>

                        <!-- Password -->
                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" class="form-control" name="password" placeholder="Enter password" value="${Student.password}">
                        </div>

                        <!-- Address -->
                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <textarea class="form-control" rows="3" name="address" placeholder="Enter your full address" >${Student.address}</textarea>
                        </div>

                        <!-- Submit Button -->
                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">Submit</button>
                        </div>

                    </form>
                </div>

            </div>

        </div>
    </div>
</div>
</body>
</html>