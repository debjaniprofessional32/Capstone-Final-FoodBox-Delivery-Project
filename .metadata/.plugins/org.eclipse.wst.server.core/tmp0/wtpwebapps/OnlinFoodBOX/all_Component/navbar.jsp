 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>
 <style type="text/css">
 .navbar {
     background: #000000
 }

 .nav-item::after {
     content: '';
     display: block;
     width: 0px;
     height: 2px;
     background: #fec400;
     transition: 0.4s
 }

 .nav-item:hover::after {
     width: 100%
 }

 .navbar-dark .navbar-nav .active>.nav-link,
 .navbar-dark .navbar-nav .nav-link.active,
 .navbar-dark .navbar-nav .nav-link.show,
 .navbar-dark .navbar-nav .show>.nav-link,
 .navbar-dark .navbar-nav .nav-link:focus,
 .navbar-dark .navbar-nav .nav-link:hover {
     color: #fec400
 }

 .nav-link {
     padding: 10px 5px;
     transition: 0.2s
 }
 
 body{
     background-color:grey;
 }
</style>
<div class="container-fluid p-3">
	<div class="row">

		<div class="col-md-3 text-success">
			
<h4><i class='fa fa-shopping-basket'></i>FoodBOx</h4>
		</div>
		
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0" action ="search.jsp">
				<input class="form-control mr-sm-2" type="search" name="ch" placeholder="Search" aria-label="Search">
				<button class="btn btn-outline-dark my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<c:if test="${not empty userobj}">
		<div class="col-md-3">
		    <a href="checkout.jsp" class="mt-6"><i class='fas fa-cart-plus fa-2x '></i></a>
			<a href="login.jsp" class="btn btn-success"><i class='fas fa-user-plus'></i>&nbsp;${userobj.name}</a> 
			<a href="logout" class="btn btn-primary "><i class='fas fa-sign-in-alt'></i>&nbsp;Logout</a>
		</div>
		
		</c:if>
		<c:if test="${empty userobj}">
		<div class="col-md-3">
			<a href="login.jsp" class="btn btn-success"><i class='fas fa-sign-in-alt'></i>&nbsp;Login</a> 
			<a href="rejister.jsp" class="btn btn-primary "><i class='fas fa-user-plus'></i>&nbsp;Register</a>
		</div>
		
		</c:if>
		
	</div>



</div>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand " href="#"><i class="fas fa-home"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active "><a class="nav-link " href="index.jsp">Home <span class="sr-only">(current)</span></a></li>
      <li class="nav-item active"><a class="nav-link" href="all_veg.jsp"><i class="fa fa-leaf"></i>All Cusine</a></li>
      <li class="nav-item active"><a class="nav-link" href="all_veg1.jsp"><i class="fa fa-leaf"></i>Vegetarian Cusine</a></li>
      <li class="nav-item active"><a class="nav-link " href="all_nonveg.jsp"><i class='fas fa-drumstick-bite'></i>Non-Vegetarian Cusine</a></li>
      <li class="nav-item active"><a class="nav-link " href="all_Bpizza.jsp"><i class='fas fa-hamburger'></i>Burger/Pizza's<i class='fas fa-pizza-slice'></i></a></li>
      <li class="nav-item active"><a class="nav-link " href="all_sweet.jsp"><i class='fas fa-candy-cane'></i>Sweets</a></li>
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <a class="btn btn-outline-light my-2 my-sm-0" href="setting.jsp" class="outline-light"><i class='fa fa-cogs '></i>&nbsp;Setting</a>
      <a class="btn btn-outline-light my-2 my-sm-0" href="helpcenter.jsp" class="outline-light"><i class='fa fa-phone '></i>&nbsp;Contact</a>
  
    </form>
  </div>
</nav>