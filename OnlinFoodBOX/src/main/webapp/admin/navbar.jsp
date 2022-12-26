<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <%@ page isELIgnored = "false" %>

<div class="container-fluid p-3">
	<div class="row">

		<div class="col-md-3 text-success">
			
<h4><i class='fa fa-shopping-basket'></i>FoodBOx</h4>
		</div>
		
		<div class="col-md-3">
		<c:if test="${ not empty userobj}">
		<a  class="btn btn-success text-white"><i class='fas fa-user'></i>${userobj.name}</a>
		<a data-toggle="modal" data-target="#exampleModalCenter" class="btn btn-primary "><i class="fas fa-sign-in-alt"></i>&nbsp;Logout</a> 
		</c:if>
			<c:if test="${empty userobj}">
			<a href="../login.jsp" class="btn btn-success"><i class='fas fa-sign-in-alt'></i>&nbsp;Login</a> 
			<a href="../logout" class="btn btn-primary "><i class='fas fa-user-plus'></i>&nbsp;Register</a>
			</c:if>
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
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand " href="#"><i class="fas fa-home"></i></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active "><a class="nav-link " href="Home.jsp">Home <span class="sr-only">(current)</span></a></li>
     
    </ul>
    <form class="form-inline my-2 my-lg-0">
     <button class="btn btn-outline-light my-2 my-sm-0" type="submit"><i class='fa fa-cogs '></i>&nbsp;Setting</button>
      <button class="btn btn-outline-light my-2 my-sm-0 ml-1" type="submit"><i class='fa fa-phone'></i>&nbsp;Contact</button>
    </form>
  </div>
</nav>