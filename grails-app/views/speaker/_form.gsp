<%@ page import="com.rvajug.Speaker" %>



<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'background', 'error')} ">
	<label for="background">
		<g:message code="speaker.background.label" default="Background" />
		
	</label>
	<g:textField name="background" value="${speakerInstance?.background}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="speaker.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.rvajug.Company.list()}" optionKey="id" required="" value="${speakerInstance?.company?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="speaker.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${speakerInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="speaker.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="image" name="image.id" from="${com.rvajug.Image.list()}" optionKey="id" required="" value="${speakerInstance?.image?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: speakerInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="speaker.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${speakerInstance?.lastName}"/>
</div>

