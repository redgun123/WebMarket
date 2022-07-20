<%@page import="java.util.List"%>
<%@page import="dao.ProductRepository"%>
<%@page import="dto.Product"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page errorPage="exceptionNoProductId.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품정보</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
	<%@include file="/layout/menu.jspf"%>
	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">상품상세정보</h1>
		</div>
	</div>
	<%
	String id = request.getParameter("id");
	ProductRepository productDAO = ProductRepository.getInstance();
	Product product = productDAO.getProductById(id);
	%>
	<div class="container">
		<div class="row">
			<div class="col-md-5">
			<img src="${pageContext.request.contextPath}/images/<%=product.getFilename()%>" style="width: 100%">			
			</div>
			<div class="col-md-6">
				<h3><%=product.getPname()%></h3>
				<p><%=product.getDescription()%>
				<p> <b>상품코드 : </b><span class="badge badge-danger">
					<%=product.getProductId()%></span>
				<p> <b>제조사</b> : <%=product.getManufacture()%>
				<p> <b>분류</b> : <%=product.getCategory()%>
				<p> <b>재고수</b> : <%=product.getUnitsInStock()%>
				<h4><%= product.getUnitprice() %>원</h4>
				<p> <a href="AddProduct.jsp" class="btn btn-info"> 상품주문 &raquo;</a> 
				<a href=./products.jsp class="btn btn-secondary"> 상품목록 
				&raquo;</a>
			</div>
		</div>
		<hr>
	</div>
	<%@include file="/layout/footer.jspf"%>
</body>
</html>