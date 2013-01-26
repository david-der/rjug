<%@ page import="com.rvajug.Member" %>



<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'email', 'error')} ">
	<label for="email">
		<g:message code="member.email.label" default="Email" />
		
	</label>
	<g:field type="email" name="email" value="${memberInstance?.email}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="member.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.rvajug.Company.list()}" optionKey="id" required="" value="${memberInstance?.company?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'firstName', 'error')} ">
	<label for="firstName">
		<g:message code="member.firstName.label" default="First Name" />
		
	</label>
	<g:textField name="firstName" value="${memberInstance?.firstName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="member.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="image" name="image.id" from="${com.rvajug.Image.list()}" optionKey="id" required="" value="${memberInstance?.image?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'lastName', 'error')} ">
	<label for="lastName">
		<g:message code="member.lastName.label" default="Last Name" />
		
	</label>
	<g:textField name="lastName" value="${memberInstance?.lastName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: memberInstance, field: 'memberType', 'error')} required">
	<label for="memberType">
		<g:message code="member.memberType.label" default="Member Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:select name="memberType" from="${com.rvajug.MemberType?.values()}" keys="${com.rvajug.MemberType.values()*.name()}" required="" value="${memberInstance?.memberType?.name()}"/>
</div>

