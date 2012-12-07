<html>
	<head></head>
	<body>
		<g:each var="categorie" in="${ universInstance.categories }">
			${ categorie.nom }
			<!-- Afficher infos categorie  -->
		</g:each>
	</body>
</html>