<%@ page import="com.rvajug.Company" %>



<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'companyName', 'error')} ">
	<label for="companyName">
		<g:message code="company.companyName.label" default="Company Name" />
		
	</label>
	<g:textField name="companyName" value="${companyInstance?.companyName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="company.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${companyInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="company.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="image" name="image.id" from="${com.rvajug.Image.list()}" optionKey="id" required="" value="${companyInstance?.image?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: companyInstance, field: 'size', 'error')} required">
	<label for="size">
		<g:message code="company.size.label" default="Size" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="size" type="number" value="${companyInstance.size}" required=""/>
</div>

