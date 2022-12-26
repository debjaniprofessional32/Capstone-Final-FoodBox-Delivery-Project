<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.uDAO.CartImpDao" %>
    <%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.*" %>
<%@ page  import="com.DB.DBConnect" %>
<%@ page import="com.uDAO.CartDao" %>
  <%@ page import="com.uDAO.CartImpDao" %>
   <%@ page import="com.uentity.Cart" %>
   <%@ page import="com.uentity.User" %>
  <%@ page import = "java.io.*" %>
 <%@ page import = "java.util.*"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="all_Component/allCss.jsp"%>
<link rel="stylesheet" href="all_Component/style.css">
<link rel="stylesheet"href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<style>
   #hideValuesOnSelect {
      display: none;
   }
</style>
</head>
<body>
<%@include file="all_Component/navbar.jsp"%>

<c:if test="${empty userobj }">
<c:redirect url="login.jsp"></c:redirect>
</c:if>
<c:if test="${not empty succMsg}">
<div class="alert alert-success" role="alert">
  ${succMsg}
</div>
<c:remove var="succMsg" scope="session"/>
</c:if>
<c:if test="${not empty failedMsg}">
<div class="alert alert-danger text-center" role="alert">
${failedMsg}
</div>
<c:remove var="failedMsg" scope="session"/>
</c:if>
<div class="container">
<div class="row py-2">
<div class="col-md-6">

<div class="card">
<div class="card-body">
<h4 class="text-center text-success">Your Selected Cusine</h4>
<table class="table bg-white table-hover">
  <thead>
    <tr>
      
      <th>Food Name</th>
      <th>Description</th>
      <th>Discount%</th>
      <th>Price</th>
      <th>Action</th>
    </tr>
  </thead>
  <tbody>
  <%
   User u=(User)session.getAttribute("userobj");
  CartImpDao dao = new CartImpDao(DBConnect.getConn());
  List<Cart> cart=dao.getFoodByUser(u.getId());
  Double totalp=0.00;
  for(Cart c:cart ){ 
	  totalp=c.getTotalprice();
  %>
	 <tr>
      <td><%=c.getFname() %></td>
      <td><%=c.getFdescription() %></td>
      <td><%=c.getDiscount() %></td>
       <td><%=c.getPrice() %></td>
      <td>
      <a href="remove_Cusine?fid=<%=c.getFid()%>&&uid=<%=c.getUserid()%>&&cid=<%=c.getCid()%>"> <i class="fas fa-trash-alt text-danger"></i></a>      <!-- -----<i class="fas fa-trash-alt text-danger"> -->
      </td>
  </tr>
<%

  } 
  %>
    <tr>
    <td>Total Bill</td>
    <td></td>
    <td></td>
    <td></td>
    <td><%=totalp %></td>
    </tr>
    
  </tbody>
</table>

</div>
</div>

</div>
<div class="col-md-6">
<div class="card">
<div class="card-body">
<h4 class="text-center text-success"> Your detail for  order</h4>
<hr>
<form  action="order" method="post">
<input type="hidden" value="${userobj.id }" name="id">
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputEmail4">Name</label>
      <input type="text" class="form-control" id="inputEmail4" name="name" value="${userobj.name}" >
    </div>
    
    <div class="form-group col-md-6">
      <label for="inputEmail4">Email</label>
      <input type="email" class="form-control" id="inputEmail4" name="email"value="${userobj.email}">
    </div>
    
  </div>
   <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputPassword4">Phone</label>
      <input type="Number" class="form-control" id="inputPassword4" name="phone"value="${userobj.phone}">
    </div>
   
  </div>
   
  <div class="form-group">
    <label for="inputAddress">Address</label>
    <input type="text" class="form-control" id="inputAddress" name="address" required  >
  </div>
  <div class="form-group">
    <label for="inputAddress2">Landmark</label>
    <input type="text" class="form-control" id="inputAddress2" name="landmark"  required >
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      <label for="inputCity">State</label>
      <input type="text" class="form-control" name="state" id="inputCity" required >
    </div>
    <div class="form-group col-md-4">
      <label for="inputState">City</label>
      <input type="text" class="form-control" name="city"id="inputZip"  required>
    </div>
    <div class="form-group col-md-2">
      <label for="inputZip">Zip</label>
      <input type="text" class="form-control" name="zip" id="inputZip" required>
    </div>
  </div>
    <!-- ------- -->
   <div class="form-row">
    
    <div class="form-group col-md-4">
      <label for="inputState">Mode of Payment</label>
      <select onchange="displayDivDemo('hideValuesOnSelect', this)" class="form-control" name="mop" >
      <option value="noselect">Select Type</option>
      <option value="Card">Card</option>
      <option value="Cash on delivery">Cash on delivery</option>
      </select>
    </div>
    <!-- - required="required" -->
  </div>
  <div id="hideValuesOnSelect">
    <div class="form-row">
    <div class="form-group col-md-6">
      
      <input type="text" class="form-control" id="inputEmail4" name="Cardholder_Name"  >
      <label for="inputEmail4">&nbsp;Cardholder's Name</label>
    </div>
    <div class="form-group col-md-6">
      
      <input type="Number" class="form-control" id="inputPassword4" name="Card_Number" minlength="16" maxlength="16">
      <label for="inputPassword4">&nbsp;Card Number</label>
    </div>
  </div>
  <div class="form-row">
    <div class="form-group col-md-6">
      
      <input type="month" class="form-control" id="inputEmail4" placeholder="month,yyyy"name="expdate" size="7" id="exp" minlength="7" maxlength="7"   >
      <label for="inputEmail4">Expiration</label>
    </div>
    <div class="form-group col-md-6">
      
      <input type="Number" class="form-control" id="inputPassword4" name="cvv" size="1" minlength="3" maxlength="3"   >
      <label for="inputPassword4">CVV</label>
    </div>
  </div>
  </div>
  <script>
   function displayDivDemo(id, elementValue) {
      document.getElementById(id).style.display = elementValue.value == 'Card' ? 'block' : 'none';
   }
</script>
  
  <!-- ------- -->
  <div class="text-center">
     <button class="btn btn-warning">Order Now</button>
     <a href="index.jsp"class="btn btn-success">Continue shopping</a>
     </div>
    </form> 
  </div>
 


</div>

</div>


</div>
</div>
</div>
</body>
</html>