
<%@ page import="com.nuitinfo.Categorie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categorie.label', default: 'Categorie')}" />
		<title><g:message code="default.list.label" args="[entityName]" default="Liste des categories"/></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<sec:ifLoggedIn>
				<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" default="Creer une catégorie"/></g:link>
			</sec:ifLoggedIn>
		</div>
		<div id="list-categorie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" default="Liste des categories"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'categorie.nom.label', default: 'Nom')}" />
					
						<th><g:message code="categorie.createur.label" default="Createur" /></th>
					
						<th><g:message code="categorie.categorieMere.label" default="Categorie Mere" /></th>
					
						<th><g:message code="categorie.univers.label" default="Univers" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${universInstance.categories}" status="i" var="categorieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: categorieInstance, field: "nom")}</td>
					
						<td>${fieldValue(bean: categorieInstance, field: "createur")}</td>
					
						<td>${fieldValue(bean: categorieInstance, field: "categorieMere")}</td>
					
						<td>${fieldValue(bean: categorieInstance, field: "univers")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
