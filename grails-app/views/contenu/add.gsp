<%@ page import="com.nuitinfo.Patrimoine"%>
<%@ page import="com.nuitinfo.Contenu"%>
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
	<g:form action="save">
		<p>
			Patrimoine :
			${patrimoine.nom}
		</p>
		<p>
			Contenu :
			${contenu.nom}
		</p>
		<label for=comment> Votre contenu : </label>
		<g:textField id="comment" name="comment"/>
		<g:hiddenField name="patId" value="${patrimoine.id}"/>
		<g:hiddenField name="contentId" value="${contenu.id}"/>
		<fieldset class="buttons">
			<g:submitButton class="save btn btn-primary" name="valider"/>
		</fieldset>
	</g:form>
</body>
</html>
