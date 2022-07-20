<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>Login</title>
</head>
<body>
	<%@include file="/layout/menu.jspf"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">로그인</h1>
		</div>
	</div>
	<div class="container" align="center">
		<div class="col-md-4 col-md-offset-4">
			<h3 class="form-signin-heading">Please sign in</h3>
			<%
			String error = request.getParameter("error");
			if (error != null) {
				out.println("<div class='alert alert-danger>");
				out.println("아이디와 비밀번호를 확인해주세요");
				out.println("</div>");
			}
			%>
			<form class="form-signin" action="j_security_check" method="post">
				<div class="form-group">
					<label for="inputUserName" class="sr-only">User Name </label> 
					<input type="text" class="form-control" placeholder="ID"
							name='j_username' required autofocus>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="sr-only">Password </label> 
					<input type="password" class="form-control" placeholder="Password"
							name='j_password' required>
				</div>
				<button class="btn btn btn-lg btn-sucess btn-block" type="submit">로그인</button>
			</form>
		</div>
	</div>
</body>
</html>