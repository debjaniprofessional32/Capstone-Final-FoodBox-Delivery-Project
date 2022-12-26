<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Address</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
</head>
<body style="background-color:#8DB496 ">
<%@include file="all_Component/navbar.jsp"%>
<div class="container mb-5 ">
<div class="row">
<div class="col-md-6 offset-md-3 mt-5 ">
<div class="card">

<div class="card-body">
<h4 class="text-center text-success">Update address for Delivery of order</h4>
<form action="">
<div class="form-row">
 <div class="form-group col-md-6">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" placeholder="">
  </div>
  <div class="form-group col-md-6">
    <label for="inputAddress2">Landmark</label>
    <input type="text" class="form-control" id="inputAddress2" placeholder="">
  </div></div>
  <div class="form-row">
    <div class="form-group col-md-4">
      <label for="inputCity">City</label>
      <input type="text" class="form-control" id="inputCity">
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">State</label>
      <select id="inputState" class="form-control">
        <option selected>Choose...</option>
        <option>...</option>
      </select>
    </div>
    <div class="form-group col-md-4">
      <label for="inputZip">Pin</label>
      <input type="text" class="form-control" id="inputZip">
    </div>
  </div>

<div class="text-center text-warning">
<button class="text-center btn btn-warning">Add Address</button>
  </div>
</form>
</div>
</div>
</div>
</div>
</div>

</body>
</html>