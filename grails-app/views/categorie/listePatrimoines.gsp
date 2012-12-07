
<%@ page import="com.nuitinfo.Categorie" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'categorie.label', default: 'Categorie')}" />
		<title><g:message code="default.list.label" args="[entityName]" default="Liste des patrimoines"/></title>
	</head>
	<body>
		
		<div class="nav" role="navigation">
			<sec:ifLoggedIn>
				<g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" default="Creer un patrimoine"/></g:link>
			</sec:ifLoggedIn>
		</div>
		<div id="list-patrimoine" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" default="Liste des patrimoines"/></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="nom" title="${message(code: 'categorie.nom.label', default: 'Nom')}" />
					

					</tr>
				</thead>
				<tbody>
				<g:each in="${categorie.cat_pats.patrimoine}" status="i" var="patrimoineInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td>${fieldValue(bean: patrimoineInstance, field: "nom")}</td>
					

					
					</tr>
				</g:each>
				</tbody>
			</table>
		</div>
	</body>
</html>
