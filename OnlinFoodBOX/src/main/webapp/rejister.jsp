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
.exampleInputPassword1 {
 float: left ;
}
</style>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
</head>
<%@include file="all_Component/navbar.jsp"%>
<div class="cont">
<h4>Registration Form</h4>
<c:if test="${not empty succMsg }">
<p class="text-center text-success">${succMsg}</p>
<c:remove var="succMsg" scope="session"/>
</c:if>
<c:if test="${not empty failedMsg }">
<p class="text-center text-danger">${failedMsg}</p>
<c:remove var="failedMsg" scope="session"/>
</c:if>
<form class="form-horizontal" action="register" method="post">

<div class="form-group">
    <label for="exampleInputEmail1" class="text-left">Full Name</label>
    
    <input type="text" class="form-control" name="fname" id="exampleInputEmail1" aria-describedby="emailHelp" required="required">
</div>
<div class="form-group">
    <label for="exampleInputEmail1">Phone</label>
 
    <input type="number" class="form-control" name="phone" id="exampleInputEmail1" aria-describedby="emailHelp" required="required"">
</div>
 
<div class="form-group">
    <label for="exampleInputEmail1">Email ID </label>

    <input type="email" class="form-control" name="email" id="exampleInputEmail1" aria-describedby="emailHelp"required="required">
 </div>
<div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    
    <input type="password" name="pwd"class="form-control" id="exampleInputPassword1" required="required">
 </div>
<div class="form-group">
<input type="checkbox" class="form-check-input" name="check" id="exampleCheck1">
    <label class="form-check-label" for="exampleCheck1">Agree terms & condition</label></div>
<div class="form-group">
  <button type="submit" class="btn btn-primary ">Submit</button>
 </div>





</form>

</div>


<%@include file="all_Component/footer.jsp"%>
<body>

</body>
</html>