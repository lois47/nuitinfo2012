<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		
	</head>
	<body>
		<div class="row-fluid">
			<g:form action="save" class="form-search">
				<div class="input-append">
					<g:textField name="recherche" class="search-query" placeholder="Rechercher..."/>
					<button class="btn btn-primary" type="submit"><i class="icon-search"></i></button>
				</div>
			</g:form>
		</div>
	</body>
</html>
