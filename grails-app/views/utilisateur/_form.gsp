<%@ page import="com.nuitinfo.Utilisateur" %>



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

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="utilisateur.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${utilisateurInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="utilisateur.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${utilisateurInstance?.login}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilisateur.password.label" default="Password" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${utilisateurInstance?.password}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountExpired', 'error')} ">
	<label for="accountExpired">
		<g:message code="utilisateur.accountExpired.label" default="Account Expired" />
		
	</label>
	<g:checkBox name="accountExpired" value="${utilisateurInstance?.accountExpired}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'accountLocked', 'error')} ">
	<label for="accountLocked">
		<g:message code="utilisateur.accountLocked.label" default="Account Locked" />
		
	</label>
	<g:checkBox name="accountLocked" value="${utilisateurInstance?.accountLocked}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'enabled', 'error')} ">
	<label for="enabled">
		<g:message code="utilisateur.enabled.label" default="Enabled" />
		
	</label>
	<g:checkBox name="enabled" value="${utilisateurInstance?.enabled}" />
</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'passwordExpired', 'error')} ">
	<label for="passwordExpired">
		<g:message code="utilisateur.passwordExpired.label" default="Password Expired" />
		
	</label>
	<g:checkBox name="passwordExpired" value="${utilisateurInstance?.passwordExpired}" />
</div>

