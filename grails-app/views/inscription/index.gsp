<%@ page import="com.nuitinfo.Utilisateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<h1>
			<g:message code="inscription.message.form" />
		</h1>
		<g:hasErrors bean="${utilisateurInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${utilisateurInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
		<g:form action="save">
			<fieldset class="form">
					<g:render template="form"/>
			</fieldset>
			<g:submitButton name="creer" class="save" value="${message(code: 'default.button.create.label', default: 'Create')}" />
		</g:form>
	</body>
</html>