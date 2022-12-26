<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order Success Page</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
</head>
<body>
<%@include file="all_Component/navbar.jsp"%>
<div class="container text-center mt-3">
<i class="fas fa-check-circle fa-5x text-success"></i>
<h2> Thank You</h2>
<h3>Your Order has been accepted</h3>
<h6>Food will be deliver with in 35 min in your address</h6>
<a href ="index.jsp" class="btn btn-primary  mt-3"> Home</a>
<a href="order.jsp" class="btn btn-danger mt-3">View Ordered Detail</a>
</div>
</body>
</html>