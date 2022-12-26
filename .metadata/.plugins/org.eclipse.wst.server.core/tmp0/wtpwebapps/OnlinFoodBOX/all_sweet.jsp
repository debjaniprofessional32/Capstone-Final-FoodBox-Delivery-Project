<%@page import="com.uentity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page  import="com.DB.DBConnect" %>
<%@ page import="com.uDAO.CusineDao" %>
  <%@ page import="com.uDAO.CusineImpDao" %>
   <%@ page import="com.uentity.CusineList" %>
  <%@ page import = "java.io.*" %>
 <%@ page import = "java.util.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Sweet Cusine</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
<style type="text/css">
.crd-ho:hover {
	background-color: #EEFAFA;
}
</style>
</head>
<body>
<% 
	User u=(User)session.getAttribute("userobj");
	%>
		
<%@include file="all_Component/navbar.jsp"%>
<H4 class="text-center p-2">All Sweet Cusine</H4>
<div class="container-fluid">
<div class="row">
<%
					CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list=dao.getAllSweetItem();
					for(CusineList c:list){%>
						
						<div class="cols-md-3 mx-5 px-4 py-4">
					
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p>Name:&nbsp;<%=c.getFname() %></p>
								<p>Cusine:&nbsp;<%=c.getDescription() %></P>
								<p>Description:&nbsp;<%=c.getCategory() %></P>
								<div class="row">
									<% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%> 
									<a	href="view.jsp?fid=<%=c.getFid()%>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1"><i class="fas fa-rupee-sign">&nbsp;<%=c.getFinalprice() %></i></a>
								</div>
								</div>
							</div>
						</div>
						<%
					}
					
					%>
					

</div>

</div>
</body>
</html>