<%@ page import="com.nuitinfo.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="utilisateur.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${utilisateurInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'motdepasse', 'error')} required">
	<label for="motdepasse">
		<g:message code="utilisateur.motdepasse.label" default="Motdepasse" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="motdepasse" required="" value="${utilisateurInstance?.motdepasse}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountBloque', 'error')} ">
	<label for="accountBloque">
		<g:message code="utilisateur.accountBloque.label" default="Account Bloque" />
		
	</label>
	<g:checkBox name="accountBloque" value="${utilisateurInstance?.accountBloque}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountExpire', 'error')} ">
	<label for="accountExpire">
		<g:message code="utilisateur.accountExpire.label" default="Account Expire" />
		
	</label>
	<g:checkBox name="accountExpire" value="${utilisateurInstance?.accountExpire}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="utilisateur.email.label" default="Email" />
		
	</label>
	<g:textField name="email" value="${utilisateurInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'estActif', 'error')} ">
	<label for="estActif">
		<g:message code="utilisateur.estActif.label" default="Est Actif" />
		
	</label>
	<g:checkBox name="estActif" value="${utilisateurInstance?.estActif}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'motdepasseExpire', 'error')} ">
	<label for="motdepasseExpire">
		<g:message code="utilisateur.motdepasseExpire.label" default="Motdepasse Expire" />
		
	</label>
	<g:checkBox name="motdepasseExpire" value="${utilisateurInstance?.motdepasseExpire}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${utilisateurInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} ">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
		
	</label>
	<g:textField name="prenom" value="${utilisateurInstance?.prenom}"/>
</div>

