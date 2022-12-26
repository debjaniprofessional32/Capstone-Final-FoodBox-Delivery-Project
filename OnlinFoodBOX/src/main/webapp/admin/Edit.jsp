<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.uDAO.CusineDao"%>
<%@ page import="com.uDAO.CusineImpDao"%>
<%@ page import="com.uentity.CusineList"%>
<%@ page import="java.io.*"%>
<%@ page import="java.util.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin:Add Cusine</title>
<%@include file="allCss.jsp"%>


</head>
<body style="background-color: #0B837D;">
	<%@include file="navbar.jsp"%>
	<div class="container p-5">
		<div class="row">
			<div class="col-md-4 offset-4 ">
				<div class="card">
					<div class="card-body">
						<h4 class="text-center">Edit Cusine</h4>
						<c:if test="${not empty succMsg }">
							<h5 class="text-center text-success">${succMsg}</h5>
							<c:remove var="succMsg" scope="session" />
						</c:if>
						<c:if test="${not empty failedMsg }">
							<h5 class="text-center text-danger">${failedMsg}</h5>
							<c:remove var="failedMsg" scope="session" />
						</c:if>
						<%
						int id = Integer.parseInt(request.getParameter("id"));
						CusineImpDao dao = new CusineImpDao(DBConnect.getConn());
						CusineList c = dao.getCusineByID(id);
						%>
						<form action="../editCusine" method="post" >
						
						<input type="hidden" name="id"  class="form-control" id="Cusinename"value="<%=c.getFid() %>">
							<div class="form-group">
								<label for="Cusinename">Cusine Name</label> <input type="text"
									name="ename" class="form-control" id="Cusinename"
									value="<%=c.getFname()%>">
							</div>
							<div class="form-group">
								<label for="Cusinename">Cusine </label> <input
									type="text" name="description" class="form-control" id="price"
									value="<%=c.getDescription()%>">
							</div>
							<div class="form-group">
								<label for="Cusinename">Cusine Price</label> <input
									type="Number" name="price" class="form-control" id="price"
									value="<%=c.getPrice()%>">
							</div>
							<div class="form-group">
								<label for="Cusinename">Discount /offer percent</label> <input
									type="Number" name="discountpercent" class="form-control" id="price"
									value="<%=c.getDiscountpercent()%>">
							</div>
                              	<div class="form-group">
								<label for="inputState">Status</label>
								 <select id="inputState" name="category" class="form-control">
								 <%
								if ("Veg".equals(c.getCategory())) {
								%>
								<option  value="Non-Veg">Non-Veg</option>
                                <option value="Burgur/pizza">Burgur/pizza</option>
                                <option value="Sweet">Sweet</option>
								<%
								} else if("Non-Veg".equals(c.getCategory()))
								{%>
								<option  value="Veg">Veg</option>
                                <option value="Burgur/pizza">Burgur/pizza</option>
                                <option value="Sweet">Sweet</option>
								<%}
								else if("Burgur/pizza".equals(c.getCategory()))
								{%>
								<option  value="Veg">Veg</option>
                                <option value="Non-Veg">Non-Veg</option>
                                <option value="Sweet">Sweet</option>
								<%}
								else 
								{%>
								<option value="Sweet">Sweet</option>
								<option  value="Veg">Veg</option>
                                <option value="Non-Veg">Non-Veg/pizza</option>
                                <option value="Burgur/pizza">Non-Veg</option>
								<%}
								%>
							</select>
							<div class="form-group">
								<label for="inputState">Status</label>
								 <select id="inputState" name="status" class="form-control">
								 <%
								if ("Active".equals(c.getStatus())) {
								%>
								<option value="Active">Active</option>
								<option value="InActive">Inactive</option>
								<%
								} else {%>
								<option value="InActive">InActive</option>
								<option value="Active">Active</option>
								<%}
								%>
							</select>
                   </div>
								<button type="submit" class="btn btn-primary">Update</button>
						</form>

					</div>
				</div>
			</div>

		</div>

	</div>
	<div style="margin-top: 180px;">

		<%@include file="footer.jsp"%></div>
</body>
</html>