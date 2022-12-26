<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page  import="com.DB.DBConnect" %>
<%@ page import="com.uDAO.CusineDao" %>
  <%@ page import="com.uDAO.CusineImpDao" %>
   <%@ page import="com.uentity.CusineList" %>
      <%@ page import="com.uentity.User" %>
        <%@ page import="com.uentity.Cart" %>
          <%@ page import="com.user.servlet.RegistterServlet" %>
           <%@ page import="com.user.servlet.LougoutServlet" %>
           <%@ page import="com.user.servlet.LoginServlet" %>
  <%@ page import = "java.io.*" %>
 <%@ page import = "java.util.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>OnLineFoodBOX</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
<style type="text/css">
.crd-ho:hover {
	background-color: #EEFAFA;
}
</style>
</head>
<body style="background-color: #F6FEFE;">
	<% 
	User u=(User)session.getAttribute("userobj");
	%>
		<%@include file="all_Component/navbar.jsp"%>
		<!-- -Start of coursel -->
			<div class="container-fluid ">

				<div id="carouselExampleIndicators" class="carousel slide"
					data-ride="carousel">
					<ol class="carousel-indicators">
						<li data-target="#carouselExampleIndicators" data-slide-to="0"
							class="active"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
						<li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
					</ol>
					<div class="carousel-inner">
						<div class="carousel-item active">
							<img class="d-block w-100 img-fluid " src="img/mass/foof.jpg"
								style="width: 100%; height: 400px;" alt="First slide">
							<div class="carousel-caption d-none d-md-block">
								<h5>Differnt Cusine.</h5>
								<p>With different flavour</p>
							</div>
						</div>
						<div class="carousel-item">
							<img class="d-block w-100 " src="img/mass/vuger.jpg"
								style="height: 400px;alt="Secondslide">
							<div class="carousel-caption d-none d-md-block">
								<h5>Differnt Cusine.</h5>
								<p>With different flavour</p>
							</div>
						</div>
						<div class="carousel-item ">
							<img class="d-block w-100" src="img/mass/foo3.jpg"
								style="height: 400px;"Thirdslide">
							<div class="carousel-caption d-none d-md-block">
								<h5>Differnt Cusine.</h5>
								<p>With different Flavour</p>
							</div>
						</div>
						<div class="carousel-item ">
							<img class="d-block w-100" src="img/mass/op.jpg"
								style="height: 400px;"Fourthslide">
							<div class="carousel-caption d-none d-md-block">
								<h5>Differnt Cusine.</h5>
								<p>With different Flavour</p>
							</div>
						</div>
					</div>
					<a class="carousel-control-prev" href="#carouselExampleIndicators"
						role="button" data-slide="prev"> <span
						class="carousel-control-prev-icon" aria-hidden="true"></span> <span
						class="sr-only">Previous</span>
					</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
						role="button" data-slide="next"> <span
						class="carousel-control-next-icon" aria-hidden="true"></span> <span
						class="sr-only">Next</span>
					</a>
				</div>

			</div>
			<!-- -End of coursel -->
		
		<!-- -----Veg Csine start -->
	
			<div class="container-fluid mx-5 px-3">
				<h3 class="text-center">Veg Cusine</h3>
				<div class="row">
					
					<%
					CusineImpDao dao=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list=dao.getVegItem();
					for(CusineList c:list){%>
						
						<div class="cols-md-3 px-2">
					
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p><%=c.getFname() %></p>
								
								<div class="row">
								<% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									
									<a	href="view.jsp?fid=<%=c.getFid() %>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1">Final price&nbsp;<i class="fas fa-rupee-sign"><%=c.getFinalprice() %></i></a>
								</div>
								</div>
							</div>
						</div>
						<%
					}
					
					%>
					
							
					
				</div>
				<div class="text-center mt-2">
					<a href="all_veg1.jsp" class="btn btn-secondary btn-sm">View All</a>
				</div>
			</div>
		
		<!-- -----Veg Csine End -->
		<hr>
			<!-- -----Non-Veg Csine start -->
	
			<div class="container-fluid mx-5 px-3">
				<h3 class="text-center">Non-Veg Cusine</h3>
				<div class="row">
				
				<%
					CusineImpDao dao1=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list1=dao1.getNon_VegItem();;
					for(CusineList c1:list1){%>
				
					<div class="cols-md-3 px-2"">
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c1.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p><%=c1.getFname() %></p>
								
								<div class="row">
								<% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c1.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									
									<a	href="view.jsp?fid=<%=c1.getFid() %>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1">Final price&nbsp;<i class="fas fa-rupee-sign"><%=c1.getFinalprice() %></i></a>
								</div>
							</div>
						</div>
					</div>
				<%
					}
					
					%>
					
					
				</div>
				<div class="text-center mt-2">
					<a href="all_nonveg.jsp" class="btn btn-secondary btn-sm">View All</a>
				</div>
			</div>
		
		<!-- -----Non-Veg Csine End -->
		<hr>
			<!-- ----Burger/Pizza Csine start -->

			<div class="container-fluid mx-5 px-3">
				<h3 class="text-center">Burger/Pizza Cusine</h3>
				<div class="row">
				
				<%
					CusineImpDao dao2=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list2=dao2.getBurgerPizza();
					for(CusineList c2:list2){%>
				
					<div class="cols-md-3 px-2"">
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c2.getPhotoname() %>" alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p>Name:&nbsp;<%=c2.getFname() %></p>
								
								<div class="row">
									<% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c2.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									<a	href="view.jsp?fid=<%=c2.getFid() %>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1">Final price&nbsp;<i class="fas fa-rupee-sign"><%=c2.getFinalprice() %></i></a>
								</div>
							</div>
						</div>
					</div>
				<%
					}
					
					%>
					
					
				</div>
				<div class="text-center mt-2">
					<a href="all_Bpizza.jsp" class="btn btn-secondary btn-sm">View All</a>
				</div>
			</div>
		
		<!-- -----Burger/Pizza Csine End -->
			<!-- -----Sweet Csine start -->
	<hr>
			<div class="container-fluid mx-5 px-3">
				<h3 class="text-center">Sweet Cusine</h3>
				<div class="row">
				<%
					CusineImpDao dao3=new CusineImpDao(DBConnect.getConn());
					List<CusineList> list3=dao3.getSweetItem();;
					for(CusineList c3:list3){%>
					<div class="cols-ml-3  px-2">
						<div class="card ">
							<div class="card-body text-center crd-ho">
								<img src="food/<%=c3.getPhotoname() %>"  alt=""
									style="width: 150px; height: 200px;" class="img-thumbnail">
								<p>Name:&nbsp;<%=c3.getFname() %></p>
							
								<div class="row">
									<% if(u==null){%>
									<a href="login.jsp" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
								<%}else
								{%>
									<a href="cart?fid=<%=c3.getFid() %>&&uid=<%=u.getId() %>" class="btn btn-success btn sm ml-1"><i class='fa fa-shopping-cart'></i></a> 
									
								<%}
									%>
									<a	href="view.jsp?fid=<%=c3.getFid() %>" class="btn btn-info btn sm ml-1">View Detail</a> 
									<a	href="" class="btn btn-success btn sm ml-1">Final price&nbsp;<i class="fas fa-rupee-sign"><%=c3.getFinalprice() %></i></a>
								</div>
							</div>
						</div>
					</div>
					
					<%
					}
					
					%>
					
					
				</div>
				<div class="text-center mt-2">
					<a href="all_sweet.jsp" class="btn btn-secondary btn-sm">View All</a>
				</div>
			</div>
		
		<!-- -----Sweet Csine End -->
		<%@include file="all_Component/footer.jsp"%>
	
</body>
</html>