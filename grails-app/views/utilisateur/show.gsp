
<%@ page import="com.nuitinfo.Utilisateur" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'utilisateur.label', default: 'Utilisateur')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-utilisateur" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-utilisateur" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list utilisateur">
			
				<g:if test="${utilisateurInstance?.login}">
				<li class="fieldcontain">
					<span id="login-label" class="property-label"><g:message code="utilisateur.login.label" default="Login" /></span>
					
						<span class="property-value" aria-labelledby="login-label"><g:fieldValue bean="${utilisateurInstance}" field="login"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.motdepasse}">
				<li class="fieldcontain">
					<span id="motdepasse-label" class="property-label"><g:message code="utilisateur.motdepasse.label" default="Motdepasse" /></span>
					
						<span class="property-value" aria-labelledby="motdepasse-label"><g:fieldValue bean="${utilisateurInstance}" field="motdepasse"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.accountBloque}">
				<li class="fieldcontain">
					<span id="accountBloque-label" class="property-label"><g:message code="utilisateur.accountBloque.label" default="Account Bloque" /></span>
					
						<span class="property-value" aria-labelledby="accountBloque-label"><g:formatBoolean boolean="${utilisateurInstance?.accountBloque}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.accountExpire}">
				<li class="fieldcontain">
					<span id="accountExpire-label" class="property-label"><g:message code="utilisateur.accountExpire.label" default="Account Expire" /></span>
					
						<span class="property-value" aria-labelledby="accountExpire-label"><g:formatBoolean boolean="${utilisateurInstance?.accountExpire}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="utilisateur.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${utilisateurInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.estActif}">
				<li class="fieldcontain">
					<span id="estActif-label" class="property-label"><g:message code="utilisateur.estActif.label" default="Est Actif" /></span>
					
						<span class="property-value" aria-labelledby="estActif-label"><g:formatBoolean boolean="${utilisateurInstance?.estActif}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.motdepasseExpire}">
				<li class="fieldcontain">
					<span id="motdepasseExpire-label" class="property-label"><g:message code="utilisateur.motdepasseExpire.label" default="Motdepasse Expire" /></span>
					
						<span class="property-value" aria-labelledby="motdepasseExpire-label"><g:formatBoolean boolean="${utilisateurInstance?.motdepasseExpire}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.nom}">
				<li class="fieldcontain">
					<span id="nom-label" class="property-label"><g:message code="utilisateur.nom.label" default="Nom" /></span>
					
						<span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${utilisateurInstance}" field="nom"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${utilisateurInstance?.prenom}">
				<li class="fieldcontain">
					<span id="prenom-label" class="property-label"><g:message code="utilisateur.prenom.label" default="Prenom" /></span>
					
						<span class="property-value" aria-labelledby="prenom-label"><g:fieldValue bean="${utilisateurInstance}" field="prenom"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${utilisateurInstance?.id}" />
					<g:link class="edit" action="edit" id="${utilisateurInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
