<%@ page import="com.nuitinfo.Utilisateur" %>
<!-- Nom -->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} ">
	<label for="nom">
		<g:message code="utilisateur.nom.label" default="Nom" />
		
	</label>
	<g:textField name="nom" value="${utilisateurInstance?.nom}"/>
</div>

<!-- Prenom -->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} ">
	<label for="prenom">
		<g:message code="utilisateur.prenom.label" default="Prenom" />
		
	</label>
	<g:textField name="prenom" value="${utilisateurInstance?.prenom}"/>
</div>

<!-- Email -->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'email', 'error')} required">
	<label for="email">
		<g:message code="utilisateur.email.label" default="Email" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="email" required="" value="${utilisateurInstance?.email}"/>
</div>

<!-- Nom d'utilisateur -->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'login', 'error')} required">
	<label for="login">
		<g:message code="utilisateur.login.label" default="Login" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="login" required="" value="${utilisateurInstance?.login}"/>
</div>

<!-- Mot de passe -->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilisateur.password.label" default="Mot de passe" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="password" required="" value="${utilisateurInstance?.password}"/>
</div>

<!-- Mot de passe de confirmation -->
<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'password', 'error')} required">
	<label for="password">
		<g:message code="utilisateur.passwordConfirmation.label" default="Confirmation" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="password" name="passwordConfirmation" required="" value="${utilisateurInstance?.password}"/>
</div>

