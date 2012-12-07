<!DOCTYPE html>
<html lang="fr">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="French Patrimoine"/></title>
		
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		
		<!-- INLCUSION DES FICHIERS .CSS -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'nuitInfo.css')}" type="text/css">
		
		
		<!-- INCLUSION DES FICHIERS .JS -->
		<g:javascript src="jquery-1.7.2.js"></g:javascript>
		<g:javascript src="jquery-ui-1.8.14.min.js"></g:javascript>
		<g:javascript src="bootstrap.js"></g:javascript>
		
		
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="grailsLogo" role="banner" class="row-fluid">
			<a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a>
		</div>
		
		<!-- MENU  -->

		<nav class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<ul class="nav">
						<li>
							<g:link controller="index">
								<g:message code="menu.accueil.message" default="Accueil"/>
							</g:link>
						</li>
						<li class="">
							<g:link controller="univers" action="listeCategories">
										<g:message code="menu.univers.message" default="Univers"/>
							</g:link>
						</li>
						
					</ul>
					<div class="pull-right">
						<sec:ifLoggedIn>
							<div class="btn" >
								<g:link controller="utilisateur" action="edit">
									Mon Compte
								</g:link>
							</div>
							<div class="btn" >
					        	<g:link controller='logout' action='index'>
										<g:message code="menu.logout.message" default="Log out"/>
								</g:link>   
							</div>   
				        </sec:ifLoggedIn>
				        <sec:ifNotLoggedIn>
				        	<div class="btn" >
				        		<g:link controller="login" action="index">
									<g:message code="menu.loggin.message" default="Log in"/>
								</g:link>
							</div>
							<div class="btn" >
								<g:link controller="inscription" action="index">
									<g:message code="utilisateur.inscription.inscriptionLien"/>
								</g:link>
							</div>
				        </sec:ifNotLoggedIn>
					</div>
					
				</div>
			</div>
		</nav>
		
		<!-- CORPS DE LA PAGE -->			
		<g:layoutBody/>
		
		<!-- FOOTER -->
		<div class="row-fluid footer">
			<div class="span12">
				<g:message code="layout.footer.message" default="Un message"/>
				<div id="row-fluid">
					<div class="span2 pull-right"><g:message code="layout.footer.footerInfo" default="Powered by"/>
						<a href="http://grails.org">
							Grails
						</a>
					</div>
				</div>
			</div>
		</div>
		
		
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
