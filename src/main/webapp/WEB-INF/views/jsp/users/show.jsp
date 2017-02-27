<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">

<jsp:include page="../fragments/header.jsp" />

<div class="container">

	<c:if test="${not empty msg}">
		<div class="alert alert-${css} alert-dismissible" role="alert">
			<button type="button" class="close" data-dismiss="alert" aria-label="Close">
				<span aria-hidden="true">&times;</span>
			</button>
			<strong>${msg}</strong>
		</div>
	</c:if>

	<h1>User Detail</h1>
	<br />

	<div class="row">
		<label class="col-sm-2">ID</label>
		<div class="col-sm-10">${user.id}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Activity</label>
		<div class="col-sm-10">${user.activity}</div>
	</div>

	<div class="row">
		<label class="col-sm-2">Start_planned</label>
		<div class="col-sm-10">${user.start_planned}</div>
	</div>

<div class="row">
		<label class="col-sm-2">Start_actual</label>
		<div class="col-sm-10">${user.start_actual}</div>
	</div>

<div class="row">
		<label class="col-sm-2">Finish_planned</label>
		<div class="col-sm-10">${user.finish_planned}</div>
	</div>

<div class="row">
		<label class="col-sm-2">Finish_actual</label>
		<div class="col-sm-10">${user.finish_actual}</div>
	</div>
	
	<div class="row">
		<label class="col-sm-2">Status</label>
		<div class="col-sm-10">${user.status}</div>
	</div>


</div>

<jsp:include page="../fragments/footer.jsp" />

</body>
</html>