<%@ page import="com.rvajug.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="image.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" maxlength="25" required="" value="${imageInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'file', 'error')} required">
	<label for="file">
		<g:message code="image.file.label" default="File" />
		<span class="required-indicator">*</span>
	</label>
	<input type="file" id="file" name="file" />
</div>

