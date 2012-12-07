
<%@ page import="com.nuitinfo.Categorie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categorie.label', default: 'Categorie')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-categorie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-categorie" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list categorie">
			
				<g:if test="${categorieInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="categorie.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${categorieInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${categorieInstance?.createur}">
				<li class="fieldcontain">
					<span id="createur-label" class="property-label"><g:message code="categorie.createur.label" default="Createur" /></span>
					
						<span class="property-value" aria-labelledby="createur-label"><g:link controller="utilisateur" action="show" id="${categorieInstance?.createur?.id}">${categorieInstance?.createur?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${categorieInstance?.categorieMere}">
				<li class="fieldcontain">
					<span id="categorieMere-label" class="property-label"><g:message code="categorie.categorieMere.label" default="Categorie Mere" /></span>
					
						<span class="property-value" aria-labelledby="categorieMere-label"><g:link controller="categorie" action="show" id="${categorieInstance?.categorieMere?.id}">${categorieInstance?.categorieMere?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${categorieInstance?.cat_pats}">
				<li class="fieldcontain">
					<span id="cat_pats-label" class="property-label"><g:message code="categorie.cat_pats.label" default="Catpats" /></span>
					
						<g:each in="${categorieInstance.cat_pats}" var="c">
						<span class="property-value" aria-labelledby="cat_pats-label"><g:link controller="cat_Pat" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${categorieInstance?.univers}">
				<li class="fieldcontain">
					<span id="univers-label" class="property-label"><g:message code="categorie.univers.label" default="Univers" /></span>
					
						<span class="property-value" aria-labelledby="univers-label"><g:link controller="univers" action="show" id="${categorieInstance?.univers?.id}">${categorieInstance?.univers?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${categorieInstance?.id}" />
					<g:link class="edit" action="edit" id="${categorieInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
