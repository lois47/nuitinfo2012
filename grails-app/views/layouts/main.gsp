<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'apple-touch-icon-retina.png')}">
		
		<!-- INLCUSION DES FICHIERS .CSS -->
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'layout.css')}" type="text/css">
		
		<!-- INCLUSION DES FICHIERS .JS -->
		<g:javascript src="jquery-1.7.2.js"></g:javascript>
		<g:javascript src="jquery-ui-1.8.14.min.js"></g:javascript>
		<g:javascript src="jquery.hoverIntent.js"></g:javascript>
		<g:javascript src="jquery.metadata.js"></g:javascript>
		<g:javascript src="menuAnimation.js"></g:javascript>
		<g:javascript src="mbMenu.js"></g:javascript>
		
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
		<div id="grailsLogo" role="banner"><a href="http://grails.org"><img src="${resource(dir: 'images', file: 'grails_logo.png')}" alt="Grails"/></a></div>
		
		<!-- MENU 
		Menu de l'application. Powered by @url{http://pupunzi.open-lab.com/mb-jquery-components/} 
		Pour plus d'information, la doc se trouve à l'adress suivante : @url{https://github.com/pupunzi/jquery.mb.menu/wiki} -->
		<div class="menu" id="navigation">
			<ul class="rootVoices">
				<li class="rootVoice {menu: 'empty'}">
					<g:link controller="index">
						<g:message code="menu.accueil.message" default="Accueil"/>
					</g:link>
				</li>
				<li class="rootVoice {menu: 'monCompte'}">
					<g:link controller="utilisateur" action="show" id="1">
								<g:message code="menu.moncompte.message" default="Mon compte"/>
					</g:link>
				</li>
				<li class="rootVoice {menu: 'empty'}" style="float:right">
					 <sec:ifLoggedIn>
			        	<g:link controller='logout' action='index'>
					        <td class="rootVoice {menu: 'empty'}" >
								<g:message code="menu.logout.message" default="Log out"/>
							</td>
						</g:link>      
			        </sec:ifLoggedIn>
			        <sec:ifNotLoggedIn>
			        	<td class="rootVoice {menu: 'empty'}">
			        		<g:link controller="login" action="index">
								<g:message code="menu.loggin.message" default="Log in"/>
							</g:link>
						</td>
			        </sec:ifNotLoggedIn>
				</li>
			</ul>
	     </div>
	  	
	  	 <div id="monCompte" class="mbmenu">
		    <a rel="title" >title menu_1.1</a> <!-- menuvoice title-->
		    <a href="someUrl.html" target="_blank" img="image.gif" >menu_1.1 (href)</a> <!-- menuvoice with href-->
		    <a action="doSomething()" >menu_1.2</a> <!-- menuvoice with js action-->
		    <a rel="separator"></a> <!-- menuvoice separator-->
		    <a action="doSomething()" disabled=true>menu_1.3</a> <!-- menuvoice disabled-->
		    <a action="doSomething()" menu="menu_1" img="image.png">menu_1.4</a><!-- menuvoice with js action, image and submenu-->
		  </div>
		
		<!-- CORPS DE LA PAGE -->			
		<g:layoutBody/>
		
		<!-- FOOTER -->
		<div class="footer" role="contentinfo">
			<g:message code="layout.footer.message" default="Un message"/>
			<div id="language">
				<a href="javascript:;" id="change-language" tabindex="100">
					<span>
						<g:message code="layout.footer.langue"/>
					</span>
				</a>
			</div>
			<div id="selectLanguage">
				<g:message code="layout.footer.selectlanguage"/>
				<ul>
					<li>
						<a href="${request.forwardURI + "?lang=en"}"+>
							<g:message code="layout.footer.anglais"/>
						</a>
					</li>
					<li>
						<a href="${request.forwardURI + "?lang=fr"}">
							<g:message code="layout.footer.français"/>
						</a>
					</li>
				</ul>
			</div>
		</div>
		
		
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
