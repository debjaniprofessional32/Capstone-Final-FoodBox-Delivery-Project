<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
 <%@ page import="com.DB.DBConnect" %>
 <%@ page import="com.uDAO.CusineDao" %>
  <%@ page import="com.uDAO.CusineImpDao" %>
   <%@ page import="com.uentity.CusineList" %>
  <%@ page import = "java.io.*" %>
 <%@ page import = "java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin List of cusine</title>
<%@include file="allCss.jsp"%>

</head>
<body>
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	</c:if>
<h4 class="text-center">Welcome Admin</h4>
<c:if test="${not empty succMsg }">
<h5 class="text-center text-success">${succMsg}</h5>
<c:remove var="succMsg" scope="session"/>
</c:if>
<c:if test="${not empty failedMsg }">
<h5 class="text-center text-danger">${failedMsg}</h5>
<c:remove var="failedMsg" scope="session"/>
</c:if>
<table class="table table-hover"><!-- --table table-striped -->
  <thead class="thead-dark"><!-- --bg-info text-light -->
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Image</th>
      <th scope="col">Name</th>
       <th scope="col">Cusine</th>
      <th scope="col">Price</th>
           <th scope="col" class="text-center">Description</th>
      <th scope="col">Status</th>
      <th scope="col">Saving %</th>
      <th scope="col">Discount Amount</th>
         <th scope="col">Final Price</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  <% CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
  List<CusineList> list=dao.getallCusine();
  for(CusineList c:list){
  
  %>
  <tr>
      <td><%=c.getFid() %></th>
          <td><img src="../food/<%=c.getPhotoname() %>"style="width:50px;height:50px;"></td>
          <td><%=c.getFname() %></td>
          <td><%=c.getDescription() %></td>
          <td class="text-center"><%=c.getPrice() %></td>
          <td><%=c.getCategory() %></td>
          <td><%=c.getStatus() %></td>
          <td class="text-center"><%=c.getDiscountpercent() %></td>
          <td class="text-center"><%=c.getDiscountamount() %></td>
          <td class="text-center"><%=c.getFinalprice() %></td>
        <td>        
        <a href="Edit.jsp?id=<%=c.getFid()%>"  ><i class="fas fa-edit text-success"></i></a>&nbsp;
        <a href="../delete?id=<%=c.getFid()%>" ><i class="fas fa-trash-alt text-danger"></i></a>
        </td>
    </tr>
  <%
  }
  %>
  
    
   
    
  </tbody>
</table>
</div>
	<div style="margin-top:180px;">
	
	<%@include file="footer.jsp"%></div>
	</body>
</html>