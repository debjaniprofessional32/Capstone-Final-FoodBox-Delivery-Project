<%@page import="com.uentity.Food_Order"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.uDAO.OrderImpDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Order List</title>
<%@include file="allCss.jsp"%>
</head>
<body>
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	</c:if>
<h4 class="text-center">Order List</h4>
<table class="table table-striped">
  <thead class="bg-info text-light">
    <tr>
      <th scope="col" class="text-center">OrderID</th>
      <th scope="col" class="text-center">Name</th>
      <th scope="col" class="text-center">Phone</th>
      <th scope="col" class="text-center">Email</th>
      <th scope="col" class="text-center">Cusine Name</th>
      <th scope="col" class="text-center">Discount %</th>
       <th scope="col" class="text-center">Price</th>
        <th scope="col" class="text-center">Payment Type</th>
    </tr>
  </thead>
  <tbody>
  <%
  OrderImpDao dao=new OrderImpDao(DBConnect.getConn());
  List<Food_Order> flist=dao.listOfOrderforAdmin();
  for(Food_Order f:flist)
  {%>
	      <tr>
      <th scope="row" class="text-center"><%=f.getOrder_id() %></th>
      <td class="text-center"><%=f.getUserName() %></td>
      <td class="text-center"><%=f.getPhone() %></td>
      <td class="text-center"><%=f.getEmail() %></td>
        <td class="text-center"><%=f.getCusinename() %></td>
        <td class="text-center"><%=f.getDiscount_percent() %></td>
        <td class="text-center"><%=f.getPrice() %></td>
         <td class="text-center"><%=f.getPaymentType() %></td>
         
    </tr>
  <%}
  
  %>

    

  </tbody>
</table>
</div>
	<div style="margin-top:200px;">
	
	<%@include file="footer.jsp"%></div>
	</body>
</html>