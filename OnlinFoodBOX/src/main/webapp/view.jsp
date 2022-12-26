<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.uDAO.CusineDao"%>
<%@ page import="com.uDAO.CusineImpDao"%>
<%@ page import="com.uentity.CusineList"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_Component/allCss.jsp"%>

<link rel="stylesheet" href="all_Component/style.css">
<style type="text/css">
.crd-ho:hover {
	background-color: #EEFAFA;
}
</style>
</head>
<body style="background-color:#f0f1f2;">
<%@include file="all_Component/navbar.jsp"%>
<%
						int fid = Integer.parseInt(request.getParameter("fid"));
						CusineImpDao dao = new CusineImpDao(DBConnect.getConn());
						CusineList c = dao.getCusineByID(fid);
						%>
<div class="container d-flex justify-content-center p-3">
<div class="row  p-5">
<div class="column-md-5 text-center m-1 p-5 border bg-white">
<h6>Description/Category:<%=c.getCategory() %></h6>
<img src="food/<%=c.getPhotoname() %>" alt="" style="width: 100px; height: 150px;" class="img-thumbnail">
<br><br>
<h5> Name:<span class="text-info"><%=c.getFname()%></span></h5>
<h6>Cusine :<span class="text-warning"><%=c.getDescription() %></span></h6>
<h6>Discount%:<span class="text-danger"><%=c.getDiscountpercent() %></span></h6>

</div>

<div class="column-md-5 m-1 text-center p-5 border bg-white">


<h4> Cusine Name:<%=c.getFname()%></h4>
<div class="row d-flex justify-content-center">
<div class="col-md-4 text-danger text-center m-1 p-3"><i class="fas fa-money-bill-wave fa-1x"></i>
<h6 class="text-dark">Cash on Delivery</h6></div>

<div class="col-md-4 text-danger text-center m-1 p-3"><i class="fas fa-truck-moving fa-1x"></i>
<h6 class="text-dark">Free Delivery</h6></div>
 


</div>
<div class="row d-flex justify-content-center">
<a href="" class="btn btn-primary"><i class="fas fa-cart-plus danger"></i>&nbsp;&nbspAdd to cart</a>&nbsp;
<a href="" class="btn btn-success"><i class="fas fa-rupee-sign danger"></i>&nbsp;&nbsp;Final Price:<%=c.getFinalprice() %></a>
</div>

</div>


</div>



</div>
</body>
</html>