<%@ page import="com.nuitinfo.Utilisateur" %>
<html>
	<head>
		<meta name="layout" content="main">
	</head>
	<body>
		<h1>
			<g:message code="inscription.activation.titre"/>
		</h1>
		<p>
		<g:if test="${!erreur}">
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<g:message code="inscription.activation.activationMessage"/>
			<g:link action="auth" controller="login"><g:message code="menu.loggin.message"/></g:link>
		</g:if>	
		<g:else>
			<div class=error>
				<g:message code="inscription.activation.erreurMessage"/>
			</div>
		</g:else>
		</p>
	</body>
</html>