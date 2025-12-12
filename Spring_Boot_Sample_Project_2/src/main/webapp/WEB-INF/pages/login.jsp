<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
<style>
    /* Small visual tweaks */
    body { background: linear-gradient(135deg,#f6f8ff 0%, #eef6ff 100%); min-height:100vh; }
    .card { max-width: 420px; width:100%; border-radius: 14px; box-shadow: 0 8px 30px rgba(26, 31, 80, 0.08); }
    .brand { font-weight:700; letter-spacing:0.2px; }
  </style>
</head>


<body class="bg-light">
<%@ include file="header.jsp" %>

  <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">

    <div class="card p-4 shadow" style="width: 350px;">
      <h3 class="text-center mb-3">Login</h3>

      <form action="logincheck" method="post">

        <!-- Gmail -->
        <div class="mb-3">
          <label class="form-label">Email</label>
          <input type="email" class="form-control" name="email" placeholder="Enter Gmail" required>
        </div>

        <!-- Password -->
        <div class="mb-3">
          <label class="form-label">Password</label>
          <input type="password" class="form-control" name="password" placeholder="Enter Password" required>
        </div>

        <button type="submit" class="btn btn-primary w-100 mt-2">Login</button>

      </form>
    </div>

  </div>

</body>




</html>