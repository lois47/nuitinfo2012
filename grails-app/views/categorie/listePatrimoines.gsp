<html>
	<head></head>
	<body>
		<g:each var="patrimoine" in="${ categorie.cat_pats.patrimoine }">
			${ patrimoine.nom }
			<!-- Afficher infos patrimoine  -->
		</g:each>
	</body>
</html>