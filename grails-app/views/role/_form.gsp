<%@ page import="com.nuitinfo.Role" %>



<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'libelle', 'error')} required">
	<label for="libelle">
		<g:message code="role.libelle.label" default="Libelle" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="libelle" required="" value="${roleInstance?.libelle}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: roleInstance, field: 'estAdmin', 'error')} ">
	<label for="estAdmin">
		<g:message code="role.estAdmin.label" default="Est Admin" />
		
	</label>
	<g:checkBox name="estAdmin" value="${roleInstance?.estAdmin}" />
</div>

