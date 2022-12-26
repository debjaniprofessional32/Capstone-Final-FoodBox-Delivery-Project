<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<%@include file="allCss.jsp"%>
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css'>
	<style type="text/css">
a{
text-decoration:none;
color:black;}
a:hover{
text-decoration:none;
color:brown;
}
</style>
</head>
<body>
	<%@include file="navbar.jsp"%>
	<c:if test="${empty userobj}">
	<c:redirect url="../login.jsp"/>
	</c:if>
	<div class="container">
		<div class="row p-5">
			<div class="cols md-3">
			<a href="addcusine.jsp">
				<div class="card m-4">
					<div class="card-body text-center ">
						<i class="fas fa-plus-square fa-3x text-primary"></i>
						<h4>Add Food Item</h4>
						-----------------
					</div>
				</div>
				</a>
			</div>
			<div class="cols md-3">
			<a href="listcusine.jsp">
				<div class="card m-4">
					<div class="card-body text-center">
						<i class='fa fa-list-ul fa-3x text-danger'></i>
						<h4>All Food Item</h4>
						-----------------
					</div>
				</div>
				</a>
			</div>
			<div class="cols md-3">
			<a href="ordercusine.jsp">
				<div class="card m-4">
					<div class="card-body text-center">
						<i class="fas fa-box-open fa-3x text-warning"></i>
						<h4>Order</h4>
						-----------------
					</div>
				</div>
				</a>
			</div>
			<div class="cols md-3">
			<a  href="../logout"data-toggle="modal" data-target="#exampleModalCenter">
				<div class="card m-4">
					<div class="card-body text-center">
						<i class="fas fa-sign-out-alt fa-3x text-success"></i>
						<h4>Logout</h4>
						-----------------
					</div>
				</div>
				</a>
				</div>
			</div>
		
		</div>

<!-- Logout ModelStart -->
<div class="modal fade" id="exampleModalCenter" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLongTitle">Confirm</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <div class="text-center">
       <h5>Do you want to log out ?</h5>
       <button type="button" class="btn btn-secondary" data-dismiss="modal">No</button>
        <a href="../logout" type="button" class="btn btn-primary text-white">Logout</a>
       </div>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>
<!-- Logout ModelENd -->

	<div style="margin-top:170px;">
	
	<%@include file="footer.jsp"%></div>
</body>
</html>