<%@ page import="com.nuitinfo.Utilisateur"%>
<%@ page contentType="text/html"%>

<div>
	<h1>
		Bienvenu sur notre site
		${utilisateurInstance.prenom}
		${utilisateurInstance.nom} <br/>
	</h1>

		Votre compte a bien été créé. <br/>


Pour rappel, vos information de connexion sont les suivantes : <br/>
	
		login : <b>
		${utilisateurInstance.login} 
		 </b>
		 <br/> 
		 mot de passe : <b>
		${utilisateurInstance.password}  
		</b>
		<br/>

		Il vous faut maintenant activer votre compte en cliquant sur le lien
		suivant :
		<a href="http://localhost:8080/nuitinfo/inscription/activation?login=${utilisateurInstance.login}&hash=${hashCode}">activez votre compte</a>
	
</div>