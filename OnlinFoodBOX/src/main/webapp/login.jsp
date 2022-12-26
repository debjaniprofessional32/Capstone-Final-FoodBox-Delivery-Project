<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<style>
body{

margin:0;
padding:0;
font-family:sans-serif;
background-image:url(img/mass/hd-images-1920x1200.jpg);
background-size:cover;
background-position:center;}
.cont{
width:400px;
box-shadow:0 0 3px 0 rgba(0,0,0,0.3);
background:#fff;
padding:20px;
margin:8% auto 8%;
text-align:center;

}
.text-left{
float:left;}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
</head>
<%@include file="all_Component/navbar.jsp"%>
<div class="cont">
<h4>Login</h4>
<c:if test="${not empty succMsg }">
<h5 class="text-center text-success">${succMsg}</h5>
<c:remove var="succMsg" scope="session"/>
</c:if>
<c:if test="${not empty failedMsg }">
<h5 class="text-center text-danger">${failedMsg}</h5>
<c:remove var="failedMsg" scope="session"/>
</c:if>
<form action="login" method="post">
<div class="form-group">
    <label for="email" class = "text-left">Email address</label>
    <input type="email" class="form-control" name="email"  required="required">
      </div>
<div class="form-group">
    <label for="Password" class = "text-left">Password</label>
    <input type="password" class="form-control" name="pwd"  required="required">
  </div>
  
  <button type="submit" class="btn btn-success">Login</button>
  <br>  <br>
  <a href="rejister.jsp">Create Account</a>
</form>

</div>


<%@include file="all_Component/footer.jsp"%>
<body>

</body>
</html>