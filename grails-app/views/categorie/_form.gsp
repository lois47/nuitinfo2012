<%@ page import="com.nuitinfo.Categorie" %>



<div class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'nom', 'error')} required">
	<label for="nom">
		<g:message code="categorie.nom.label" default="Nom" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nom" required="" value="${categorieInstance?.nom}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'createur', 'error')} ">
	<label for="createur">
		<g:message code="categorie.createur.label" default="Createur" />
		
	</label>
	<g:select id="createur" name="createur.id" from="${com.nuitinfo.Utilisateur.list()}" optionKey="id" value="${categorieInstance?.createur?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'categorieMere', 'error')} ">
	<label for="categorieMere">
		<g:message code="categorie.categorieMere.label" default="Categorie Mere" />
		
	</label>
	<g:select id="categorieMere" name="categorieMere.id" from="${com.nuitinfo.Categorie.list()}" optionKey="id" value="${categorieInstance?.categorieMere?.id}" class="many-to-one" noSelection="['null': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'cat_pats', 'error')} ">
	<label for="cat_pats">
		<g:message code="categorie.cat_pats.label" default="Catpats" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${categorieInstance?.cat_pats?}" var="c">
    <li><g:link controller="cat_Pat" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="cat_Pat" action="create" params="['categorie.id': categorieInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'cat_Pat.label', default: 'Cat_Pat')])}</g:link>
</li>
</ul>

</div>

<div class="fieldcontain ${hasErrors(bean: categorieInstance, field: 'univers', 'error')} required">
	<label for="univers">
		<g:message code="categorie.univers.label" default="Univers" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="univers" name="univers.id" from="${com.nuitinfo.Univers.list()}" optionKey="id" required="" value="${categorieInstance?.univers?.id}" class="many-to-one"/>
</div>

