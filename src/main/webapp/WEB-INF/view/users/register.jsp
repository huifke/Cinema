
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="security"%>

<spring:url value="movies/photo" var="urlPhoto" />
<spring:message code="registration.title" var="regTitle" />
<spring:message code="user.username" var="userUsername" />
<spring:message code="user.password" var="userPassword" />
<spring:message code="user.birthDate" var="userBirthDate" />
<spring:message code="user.country" var="userCountry" />
<spring:message code="card.issuer" var="cardIssuer" />
<spring:message code="card.number" var="cardNumber" />
<spring:message code="form.save" var="labelSave" />
<spring:message code="form.reset" var="labelReset" />

<div id="usersRegistration">
	<h2>${regTitle}</h2>
	<c:if test="${not empty message}">
		<div id="message">${message}</div>
	</c:if>
	<form:form id="registrationForm" modelAttribute="user" method="post">
		<fieldset>
			<form:label path="username">${userUsername}</form:label>
				<form:input path="username" />
				<form:errors path="username" cssClass="error" />
		</fieldset>
		
		<fieldset>
			<form:label path="password">${userPassword}</form:label>
				<form:password path="password" />
				<form:errors path="password" cssClass="error" />
		</fieldset>
		
		<fieldset>
			<form:label path="birthDate">${userBirthDate}</form:label>
				<form:input class="date" path="birthDate" />
				<form:errors path="birthDate" cssClass="error" />
		</fieldset>
		
		<fieldset>
			<form:label path="country">${userCountry}</form:label>
				<form:input path="country" />
				<form:errors path="country" cssClass="error" />
		</fieldset>
		
		<fieldset>
			<form:label path="creditCard.issuer">${cardIssuer}</form:label>
				<form:input path="creditCard.issuer" />
				<form:errors path="creditCard.issuer" cssClass="error" />
		</fieldset>
		
		<fieldset>
			<form:label path="creditCard.number">${cardNumber}</form:label>
				<form:input path="creditCard.number" />
				<form:errors path="creditCard.number" cssClass="error" />
		</fieldset>
		
		<button type="submit" class="button">${labelSave}</button>
		<button type="reset" class="button">${labelReset}</button>
	</form:form>
</div>
