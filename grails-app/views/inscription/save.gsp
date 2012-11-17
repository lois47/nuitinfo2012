<html>
	<head>
		<meta name="layout" content="main">
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="message" role="status">${flash.message}</div>
	</g:if>
	<p>
		<g:message code="inscription.save.messageactivation"/>
	</p>
	</body>
</html>