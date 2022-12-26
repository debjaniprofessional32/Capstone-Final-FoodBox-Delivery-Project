<%@page import="com.uentity.Food_Order"%>
<%@page import="com.uDAO.OrderDao"%>
<%@page import="com.uDAO.OrderImpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="com.uentity.User"%>

    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page  import="com.DB.DBConnect" %>
<%@ page import="com.uDAO.CusineDao" %>
  <%@ page import="com.uDAO.CusineImpDao" %>
  <%@ page import="com.uDAO.CartDao" %>
  <%@ page import="com.uDAO.CartImpDao" %>
   <%@ page import="com.uentity.CusineList" %>
  <%@ page import = "java.io.*" %>
 <%@ page import = "java.util.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>order</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
</head>
<body style="background-color:#8DB496 ">
<%@include file="all_Component/navbar.jsp"%>
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<div class="container mt-4">
<h4 class="text-center text-white">Detail of order</h4>
<table class="table table-hover mt-3">
  <thead class="bg-dark text-white">
    <tr>
      <th scope="col">Order Id</th>
      <th scope="col">User Name</th>
      <th scope="col">Cusine Name</th>
      <th scope="col">Cusine Description</th>
      <th scope="col">Dsicount/Offer</th>
      <th scope="col">Price</th>
      <th scope="col">Payment Type</th>
    </tr>
  </thead>
  <tbody>
  <%
   User u=(User) session.getAttribute("userobj");
		OrderImpDao dao=new OrderImpDao(DBConnect.getConn());
		List<Food_Order> clist=dao.getCusine(u.getEmail());
		for(Food_Order f:clist )
		{%>
			 <tr>
      <th scope="row"><%=f.getOrder_id() %></th>
      <td  class="text-center"><%=f.getUserName() %></td>
      <td><%=f.getCusinename() %></td>
      <td><%=f.getDescription() %></td>
      <td class="text-center"><%=f.getDiscount_percent() %></td>
      <td><%=f.getPrice() %></td>
      <td class="text-center"><%=f.getPaymentType() %></td>
    </tr>
			
			
		<%}
  %>
   
   
  
  </tbody>
</table>


</div>
</body>
</html>