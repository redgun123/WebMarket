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
<title>페이지 오류</title>
</head>
<body>
<%@include file="/layout/menu.jspf"%>
<div class="jombotron">
	<div class="container">
		<h2 class="alert alert-danger">요청하신 페이지를 찾을 수 없습니다</h2>
	</div>
	<div class="container">
		<p><%=request.getRequestURL() %>
		<p> <a href="products.jsp" class="btn btn-btn secondary">상품목록
		&raquo;</a>
	</div>
</div>
</body>
</html>