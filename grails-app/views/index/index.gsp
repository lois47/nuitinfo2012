<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>French Patrimoine : Accueil</title>
		
	</head>
	<body>
		<div class="row-fluid">
			<g:form action="save" class="form-search main-recherche">
				<div class="input-append">
					<g:textField name="recherche" class="search-query" placeholder="Rechercher..."/>
					<button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
				</div>
			</g:form>
		</div>
		<div class="row-fluid ligne-nuages-univers">
			<g:each in="${listeunivers}" status="i" var="universInstance">
				<div class="univers">
					<div class="nomUnivers">${fieldValue(bean: universInstance, field: "nom")}</div>
					<ul class="list-categ" >
						<g:each in="${universService.getBestCategrories(universInstance.id)}" status="j" var="categorieInstance">
							<li class="categ${j }">${fieldValue(bean: categorieInstance, field: "nom")}</li>
						</g:each>
					</ul>
						
					
					
					
				</div>
			</g:each>
		</div>
	</body>
</html>
