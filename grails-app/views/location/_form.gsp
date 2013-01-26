<%@ page import="com.rvajug.Location" %>



<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'address', 'error')} required">
	<label for="address">
		<g:message code="location.address.label" default="Address" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="address" name="address.id" from="${com.rvajug.Address.list()}" optionKey="id" required="" value="${locationInstance?.address?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="location.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="image" name="image.id" from="${com.rvajug.Image.list()}" optionKey="id" required="" value="${locationInstance?.image?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: locationInstance, field: 'locationName', 'error')} ">
	<label for="locationName">
		<g:message code="location.locationName.label" default="Location Name" />
		
	</label>
	<g:textField name="locationName" value="${locationInstance?.locationName}"/>
</div>

