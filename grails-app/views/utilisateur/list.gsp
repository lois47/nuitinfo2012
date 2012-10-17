
<%@ page import="com.nuitinfo.Utilisateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-utilisateur" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="login" title="${message(code: 'utilisateur.login.label', default: 'Login')}" />
					
						<g:sortableColumn property="motdepasse" title="${message(code: 'utilisateur.motdepasse.label', default: 'Motdepasse')}" />
					
						<g:sortableColumn property="accountBloque" title="${message(code: 'utilisateur.accountBloque.label', default: 'Account Bloque')}" />
					
						<g:sortableColumn property="accountExpire" title="${message(code: 'utilisateur.accountExpire.label', default: 'Account Expire')}" />
					
						<g:sortableColumn property="email" title="${message(code: 'utilisateur.email.label', default: 'Email')}" />
					
						<g:sortableColumn property="estActif" title="${message(code: 'utilisateur.estActif.label', default: 'Est Actif')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${utilisateurInstanceList}" status="i" var="utilisateurInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${utilisateurInstance.id}">${fieldValue(bean: utilisateurInstance, field: "login")}</g:link></td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "motdepasse")}</td>
					
						<td><g:formatBoolean boolean="${utilisateurInstance.accountBloque}" /></td>
					
						<td><g:formatBoolean boolean="${utilisateurInstance.accountExpire}" /></td>
					
						<td>${fieldValue(bean: utilisateurInstance, field: "email")}</td>
					
						<td><g:formatBoolean boolean="${utilisateurInstance.estActif}" /></td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${utilisateurInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
