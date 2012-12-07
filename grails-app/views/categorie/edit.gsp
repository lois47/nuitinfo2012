<%@ page import="com.nuitinfo.Categorie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categorie.label', default: 'Categorie')}" />
		<title><g:message code="default.edit.label" args="[entityName]" /></title>
	</head>
	<body>
		
		<div id="edit-categorie" class="content scaffold-edit" role="main">
			<h1><g:message code="default.edit.label" args="[entityName]" default="Edition d&apos;une catégorie"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:hasErrors bean="${categorieInstance}">
			<ul class="errors" role="alert">
				<g:eachError bean="${categorieInstance}" var="error">
				<li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
				</g:eachError>
			</ul>
			</g:hasErrors>
			<g:form method="post" >
				<g:hiddenField name="id" value="${categorieInstance?.id}" />
				<g:hiddenField name="version" value="${categorieInstance?.version}" />
				<div
						class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'nom', 'error')} required">
						<label for="nom"> <g:message code="categorie.nom.label"
								default="Nom" /> <span class="required-indicator">*</span>
						</label>
						<g:textField name="nom" required=""
							value="${categorieInstance?.nom}" />
					</div>


					<div
						class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'univers', 'error')} required">
						<label for="univers"> <g:message
								code="categorie.univers.label" default="Univers" /> <span
							class="required-indicator">*</span>
						</label>
						<g:select id="univers" name="univers.id"
							from="${com.nuitinfo.Univers.list()}" optionKey="id" required=""
							value="${categorieInstance?.univers?.id}" class="many-to-one" />
					</div>

					<div
						class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'categorieMere', 'error')} ">
						<label for="categorieMere"> <g:message
								code="categorie.categorieMere.label" default="Categorie Mere" />

						</label>
						<g:select id="categorieMere" name="categorieMere.id"
							from="${com.nuitinfo.Categorie.list()}" optionKey="id"
							value="${categorieInstance?.categorieMere?.id}"
							class="many-to-one" noSelection="['null': '']" />
					</div>
					
				
				<fieldset class="buttons">
					<g:actionSubmit class="save btn btn-primary" action="update" value="${message(code: 'default.button.update.label', default: 'Update')}" />
					<g:actionSubmit class="delete btn btn-primary" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" formnovalidate="" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
