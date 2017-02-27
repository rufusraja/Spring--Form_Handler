<%@ page session="false"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html lang="en">


<jsp:include page="../fragments/header.jsp" />

<div class="container">

	<c:choose>
		<c:when test="${userForm['new']}">
			<h1>Add User</h1>
		</c:when>
		<c:otherwise>
			<h1>Update User</h1>
		</c:otherwise>
	</c:choose>
	<br />

	<spring:url value="/users" var="userActionUrl" />

	<form:form class="form-horizontal" method="post" modelAttribute="userForm" action="${userActionUrl}">

		<form:hidden path="id" />

		<spring:bind path="activity">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Name</label>
				<div class="col-sm-10">
					<form:input path="activity" type="text" class="form-control " id ="activity" placeholder="Activity" />
					<form:errors path="activity" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="start_planned">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Start_planned</label>
				<div class="col-sm-10">
					<form:input path="start_planned" class="form-control" id="start_planned" placeholder="start_planned" />
					
					<form:errors path="start_planned" class="control-label" />
					
					
				</div>
			</div>
		</spring:bind>

		<spring:bind path="start_actual">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Start_actual</label>
				<div class="col-sm-10">
					<form:input path="start_actual" class="form-control" id ="start_actual" placeholder="start_actual" />
					<form:errors path="start_actual" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="finish_planned">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Finish_planned</label>
				<div class="col-sm-10">
					<form:input path="finish_planned" class="form-control" id="finish_planned" placeholder="finish_planned" />
					<form:errors path="finish_planned" class="control-label" />
				</div>
			</div>
		</spring:bind>

		<spring:bind path="finish_actual">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Finish_actual</label>
				<div class="col-sm-10">
					<form:input path="finish_actual" class="form-control" id="finish_actual" placeholder="finish_actual" />
					<form:errors path="finish_actual" class="control-label" />
				</div>
			</div>
		</spring:bind>


		<spring:bind path="status">
			<div class="form-group ${status.error ? 'has-error' : ''}">
				<label class="col-sm-2 control-label">Status</label>
				<div class="col-sm-10">
					<label class="radio-inline"> <form:radiobutton path="status" value="Green" /> On Track </label>
					<label class="radio-inline"> <form:radiobutton path="status" value="Yellow" /> Date at Risk </label>
					<label class="radio-inline"> <form:radiobutton path="status" value="Red" /> Impacts End Date </label> <br/>
					<form:errors path="status" class="control-label" />
				</div>
			</div>
		</spring:bind>


		<!-- Custom Script, Spring map to model via 'name' attribute
		<div class="form-group">
			<label class="col-sm-2 control-label">Number</label>
			<div class="col-sm-10">

				<c:forEach items="${numberList}" var="obj">
					<div class="radio">
						<label> 
							<input type="radio" name="number" value="${obj}">${obj}
						</label>
					</div>
				</c:forEach>
			</div>
		</div>
 		-->


		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<c:choose>
					<c:when test="${userForm['new']}">
						<button type="submit" class="btn-lg btn-primary pull-right">Add</button>
					</c:when>
					<c:otherwise>
						<button type="submit" class="btn-lg btn-primary pull-right">Update</button>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</form:form>

</div>

<jsp:include page="../fragments/footer.jsp" />

</body>
</html>