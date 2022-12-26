<%@ page language="java" contentType="text/html; charset=ISO-8859-1"  pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Setting</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
<style type="text/css">
a {
	text-decoration: none;
	color: black
}

a:hover {
	text-decoration: none;
	color: brown;
}
</style>
</head>
<body style="background-color: #F6FEFE;">
<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
	<%@include file="all_Component/navbar.jsp"%>
	<div class="container mt-3">
	<c:if test="${not empty userobj }">
		<H3 class="text-center">Hello ${userobj.name}</H3>
</c:if>
		<div class="row  p-5">
			<div class="col-md-6">
				<a href="Edit_Profile.jsp">
					<div class="card ">
						<div class="card-body">
							<div class="card-body text-center">
								<i class="fas fa-id-card fa-3x text-success"></i>
							</div>
							<h4 class="text-center">Login & Security</h4>
							<h6><P class="text-center" >(Edit Profile)</P></h6>
						</div>
					</div>
				</a>
			</div>
				
				<div class="col-md-6 ">
				<a href="helpcenter.jsp">
					<div class="card ">
						<div class="card-body">
							<div class="card-body text-center">
								<i class="fas fa-user-circle fa-3x text-primary"></i>
							</div>
							<h4 class="text-center" >Help(Contact Center)</h4>
							<h6><p class="text-center" >Service available 7:00 AM to 11:00PM</p></h6>
						</div>
					</div>
				</a>
			</div>
			<div class="col-md-6 offset-md-3 mt-3">
				<a href="order.jsp">
					<div class="card  justify-content-center">
						<div class="card-body">
							<div class="card-body text-center">
								<i class="fas fa-receipt fa-3x text-warning"></i>
							</div>
							<h4 class="text-center" >My order</h4>
							<h6><p class="text-center" >List of Cusine for which order already placed</p></h6>
						</div>
					</div>
				</a>
			</div>
		</div>

	</div>
	<%@include file="all_Component/footer.jsp"%>
</body>
</html>