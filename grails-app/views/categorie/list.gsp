
<%@ page import="com.nuitinfo.Categorie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categorie.label', default: 'Categorie')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-categorie" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-categorie" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
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
				<g:each in="${categorieInstanceList}" status="i" var="categorieInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${categorieInstance.id}">${fieldValue(bean: categorieInstance, field: "nom")}</g:link></td>
					
						<td>${fieldValue(bean: categorieInstance, field: "createur")}</td>
					
						<td>${fieldValue(bean: categorieInstance, field: "categorieMere")}</td>
					
						<td>${fieldValue(bean: categorieInstance, field: "univers")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${categorieInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
