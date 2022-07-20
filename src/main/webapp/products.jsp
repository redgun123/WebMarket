<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
</head>
<body>
	<%
	ProductRepository productDao = ProductRepository.getInstance();
	String id = request.getParameter("id");
	request.setAttribute("list", productDao.getAllProducts());
	%>

	<%@include file="/layout/menu.jspf"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품목록</h1>
		</div>
		`
	</div>
	<div class="container">
		<div class="row">
			<c:forEach items="${list}" var="p">
				<div class="col-md-4">
					<img src="${pageContext.request.contextPath}/images/${p.filename}"
						style="width: 100%">
					<h3>${p.pname }</h3>
					<p>${p.description }</p>
					<p>${p.unitprice }원</p>
					<p>
						<a href="product.jsp?id=${p.productId}">상세정보</a>
					</p>
				</div>
			</c:forEach>
		</div>
	</div>
	<%@include file="/layout/footer.jspf"%>
</body>
</html>