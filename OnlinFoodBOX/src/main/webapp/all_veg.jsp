<%@page import="com.uentity.User"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>All Veg Cusine</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
<style type="text/css">
.crd-ho:hover {
	background-color: #EEFAFA;
}
/* toast */
#toast {
	min-width: 300px;
	position: fixed;
	bottom: 30px;
	left: 50%;
	margin-left: -125px;
	background: #333;
	padding: 10px;
	color: white;
	text-align: center;
	z-index: 1;
	font-size: 18px;
	visibility: hidden;
	box-shadow: 0px 0px 100px #000;
}

#toast.display {
	visibility: visible;
	animation: fadeIn 0.5, fadeOut 0.5s 2.5s;
}

@keyframes fadeIn {from { bottom:0;
	opacity: 0;
}

to {
	bottom: 30px;
	opacity: 1;
}

}
@keyframes fadeOut {form { bottom:30px;
	opacity: 1;
}

to {
	bottom: 0;
	opacity: 0;
}
}

/* toast */

</style>
</head>
<body>
<% 
	User u=(User)session.getAttribute("userobj");
	%>
<c:if test="${not empty addCart}">
<div id="toast">${addCart}</div>

<script type="text/javascript">
		showToast();
		function showToast(content)
		{
		    $('#toast').addClass("display");
		    $('#toast').html(content);
		    setTimeout(()=>{
		        $("#toast").removeClass("display");
		    },2000)
		}	
</script>

<c:remove var="addCart" scope="session"/>
</c:if>
<%@include file="all_Component/navbar.jsp"%>
<H4 class="text-center text-light p-2">All Veg Cusine</H4>


<div class="container-fluid">
<div class="row">

 <%
					CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list=dao.getAllVegItem();
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

<!-- ----All Non-Veg Cusine------- -->
<H4 class="text-center text-light p-2">All Non-Veg Cusine</H4>
<div class="container-fluid">
<div class="row">

 <%
					CusineImpDao dao1=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list1=dao1.getAllNon_VegItem();
					for(CusineList c1:list1){%>
						
						<div class="cols-md-3 mx-5 px-4 py-4">
					
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c1.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p>Name:&nbsp;<%=c1.getFname() %></p>
								<p>Cusine:&nbsp;<%=c1.getDescription() %></P>
								<p>Description:&nbsp;<%=c1.getCategory() %></P>
								<div class="row">
								   <% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c1.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									
									<a	href="view.jsp?fid=<%=c1.getFid()%>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1"><i class="fas fa-rupee-sign">&nbsp;<%=c1.getFinalprice() %></i></a>
								</div>
								</div>
							</div>
						</div>
						<%
					}
					
					%>
					


</div>

</div>

<!-- ----All Non-Veg Cusine END------- -->
<!-- ----All Pizza Burrger Cusine------- -->
<H4 class="text-center text-light p-2">All Burger/Pizza Cusine</H4>
<div class="container-fluid">
<div class="row">

 <%
					CusineImpDao dao2=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list2=dao2.getAllBurgerPizza();
					for(CusineList c2:list2){%>
						
						<div class="cols-md-3 mx-5 px-4 py-4">
					
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c2.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p>Name:&nbsp;<%=c2.getFname() %></p>
								<p>Cusine:&nbsp;<%=c2.getDescription() %></P>
								<p>Description:&nbsp;<%=c2.getCategory() %></P>
								<div class="row">
								   <% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c2.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									
									<a	href="view.jsp?fid=<%=c2.getFid()%>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1"><i class="fas fa-rupee-sign">&nbsp;<%=c2.getFinalprice() %></i></a>
								</div>
								</div>
							</div>
						</div>
						<%
					}
					
					%>
					


</div>

</div>

<!-- ----All Pizza Burrger Cusine END------- -->

<!-- Sweet start -->
<H4 class="text-center text-light p-2">All Sweet Cusine</H4>
<div class="container-fluid">
<div class="row">

 <%
					CusineImpDao dao3=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list3=dao3.getAllSweetItem();
					for(CusineList c3:list3){%>
						
						<div class="cols-md-3 mx-5 px-4 py-4">
					
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c3.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p>Name:&nbsp;<%=c3.getFname() %></p>
								<p>Cusine:&nbsp;<%=c3.getDescription() %></P>
								<p>Description:&nbsp;<%=c3.getCategory() %></P>
								<div class="row">
								   <% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c3.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									
									<a	href="view.jsp?fid=<%=c3.getFid()%>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1"><i class="fas fa-rupee-sign">&nbsp;<%=c3.getFinalprice() %></i></a>
								</div>
								</div>
							</div>
						</div>
						<%
					}
					
					%>
					


</div>

</div>
<!-- --Sweet End -->
</body>
</html>