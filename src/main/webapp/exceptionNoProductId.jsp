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
<title>상품 아이디 오류</title>
</head>
<body>
<%@include file="/layout/menu.jspf"%>
<div class="jumbotron">
	<div class="container">
		<h2 class="alert alert-danger"> 해당 상품이 존재하지 않습니다</h2>
	</div>
</div>
<div class="container">
	<p><%=request.getRequestURL()%>?<%=request.getQueryString()%>
	<p> <a href="products.jsp" class="btn btn-secondary"> 상품 목록
	&raquo;</a>
</div>
</body>
</html>