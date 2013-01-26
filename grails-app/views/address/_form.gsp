<%@ page import="com.rvajug.Address" %>



<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'city', 'error')} ">
	<label for="city">
		<g:message code="address.city.label" default="City" />
		
	</label>
	<g:textField name="city" value="${addressInstance?.city}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'specifics', 'error')} ">
	<label for="specifics">
		<g:message code="address.specifics.label" default="Specifics" />
		
	</label>
	<g:textField name="specifics" value="${addressInstance?.specifics}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'state', 'error')} ">
	<label for="state">
		<g:message code="address.state.label" default="State" />
		
	</label>
	<g:textField name="state" value="${addressInstance?.state}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'streetAddr', 'error')} ">
	<label for="streetAddr">
		<g:message code="address.streetAddr.label" default="Street Addr" />
		
	</label>
	<g:textField name="streetAddr" value="${addressInstance?.streetAddr}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: addressInstance, field: 'zip', 'error')} ">
	<label for="zip">
		<g:message code="address.zip.label" default="Zip" />
		
	</label>
	<g:textField name="zip" value="${addressInstance?.zip}"/>
</div>

