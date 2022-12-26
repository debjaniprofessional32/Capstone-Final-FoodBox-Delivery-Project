<%@ page language="java" contentType="text/html; charset=ISO-8859-1"    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Cusine</title>
<%@include file="allCss.jsp"%>


</head>
<body style="background-color: #0B837D;">
<%@include file="navbar.jsp"%>
<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	</c:if>
<div class="container p-5">
<div class="row">
<div class="col-md-4 offset-4 ">
<div class="card">
<div class="card-body">
<h4 class="text-center">Add New Cusine</h4>
<c:if test="${not empty succMsg }">
<h5 class="text-center text-success">${succMsg}</h5>
<c:remove var="succMsg" scope="session"/>
</c:if>
<c:if test="${not empty failedMsg }">
<h5 class="text-center text-danger">${failedMsg}</h5>
<c:remove var="failedMsg" scope="session"/>
</c:if>

<form action="../additemlist" method="post" enctype="multipart/form-data">
  <div class="form-group">
    <label for="Cusinename">Cusine Name</label>
    <input type="text" name="cname"class="form-control" id="Cusinename" >
      </div>
    <div class="form-group">
    <label for="Cusinename">Cusine </label>
    <textarea rows="2" cols="35"  name="description" style="border: 1px solid #E0E0E0;border-radius: 5px;">
    enter description of cusine.....
    </textarea>
      </div>
    
       <div class="form-group">
    <label for="Cusinename">Cusine Price</label>
    <input type="Number" name="price"class="form-control" id="price" >
      </div>
      <div class="form-group">
    <label for="Cusinename">Discount/offer percent</label>
    <input type="Number" name="discountpercent"class="form-control" id="price" >
      </div>
   
    <div class="form-group">
   
    <input type="hidden" name="discountAmount"class="form-control" id="price" >
      </div>
       <div class="form-group">
   
    <input type="hidden" name="final_price"class="form-control" id="price" >
      </div>
      <div class="form-group">
    <label for="inputState" >Description</label>
    <select id="inputState" name="category" class="form-control">
        <option selected>...Select...</option>
        <option value="Veg">Veg</option>
        <option  value="Non-Veg">Non-Veg</option>
        <option value="Burgur/pizza">Burgur/pizza</option>
        <option value="Sweet">Sweet</option>
      </select>
      </div>
      <div class="form-group">
    <label for="inputState" >Status</label>
    <select id="inputState" name="status" class="form-control">
        <option selected>...Select...</option>
        <option value="Active">Active</option>
        <option value="InActive">Inactive</option>
              </select>
      </div>
  <div class="form-group">
    <label for="exampleFormControlFile1">Upload photo</label>
    <input type="file" class="form-control-file" name="fimg">
  </div>
  <button type="submit" class="btn btn-primary">Add</button>
</form>

</div>
</div>
</div>

</div>

</div>
	<div style="margin-top:180px;">
	
	<%@include file="footer.jsp"%></div>
</body>
</html>