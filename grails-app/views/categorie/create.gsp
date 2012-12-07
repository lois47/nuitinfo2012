<%@ page import="com.nuitinfo.Categorie"%>
<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main">
<g:set var="entityName"
	value="${message(code: 'categorie.label', default: 'Categorie')}" />
<title><g:message code="default.create.label"
		args="[entityName]" /></title>
</head>
<body>
	<div class="row-fluid">
		<div class="span8 offset3">
			<h1>
				<g:message code="default.create.label" args="[entityName]"
					default="Création d&apos;une nouvelle catégorie" />
			</h1>
		</div>
	</div>
	<div class="row-fluid">
		<div class="span4 offset4">
			
			<div id="create-categorie" class="content scaffold-create"
				role="main">
				<g:if test="${flash.message}">
					<div class="message" role="status">
						${flash.message}
					</div>
				</g:if>
				<g:hasErrors bean="${categorieInstance}">
					<ul class="errors" role="alert">
						<g:eachError bean="${categorieInstance}" var="error">
							<li
								<g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
									error="${error}" /></li>
						</g:eachError>
					</ul>
				</g:hasErrors>
				<g:form action="save">
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
						<g:submitButton name="create" class="save btn btn-primary"
							value="${message(code: 'default.button.create.label', default: 'Create')}" />
					</fieldset>
				</g:form>
			</div>
		</div>
	</div>
</body>
</html>
