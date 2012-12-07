<!DOCTYPE html>
<%@ page defaultCodec="html" %>
<%@ page import="org.springframework.util.ClassUtils" %>
<%@ page import="grails.plugin.searchable.internal.lucene.LuceneUtils" %>
<%@ page import="grails.plugin.searchable.internal.util.StringQueryUtils" %>
<html>
	<head>
		<meta name="layout" content="main"/>
		<script type="text/javascript">
	        var focusQueryInput = function() {
	            document.getElementById("q").focus();
	        }
	    </script>
		<title>French Patrimoine : Accueil</title>
	</head>
	<body onload="focusQueryInput();">
		<div class="row-fluid">
			<g:form url='[controller: "resultatRecherche", action: "listeResultats"]' id="searchableForm" 
						name="searchableForm" method="get" class="form-search main-recherche">
				<div class="input-append">
					<g:textField name="q" class="search-query" placeholder="Rechercher..." value="${params.q}"/>
					<button class="btn btn-primary" type="submit" value="Search"><i class="icon-search"></i></button>
				</div>
				<div style="clear: both; display: none;" class="hint">See <a href="http://lucene.apache.org/java/docs/queryparsersyntax.html">Lucene query syntax</a> for advanced queries</div>
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

