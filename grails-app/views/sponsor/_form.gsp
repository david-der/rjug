<%@ page import="com.rvajug.Sponsor" %>



<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'sponsorLevel', 'error')} ">
	<label for="sponsorLevel">
		<g:message code="sponsor.sponsorLevel.label" default="Sponsor Level" />
		
	</label>
	<g:select name="sponsorLevel" from="${com.rvajug.SponsorLevel?.values()}" keys="${com.rvajug.SponsorLevel.values()*.name()}" value="${sponsorInstance?.sponsorLevel?.name()}" noSelection="['': '']"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'company', 'error')} required">
	<label for="company">
		<g:message code="sponsor.company.label" default="Company" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="company" name="company.id" from="${com.rvajug.Company.list()}" optionKey="id" required="" value="${sponsorInstance?.company?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: sponsorInstance, field: 'contact', 'error')} required">
	<label for="contact">
		<g:message code="sponsor.contact.label" default="Contact" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="contact" name="contact.id" from="${com.rvajug.Member.list()}" optionKey="id" required="" value="${sponsorInstance?.contact?.id}" class="many-to-one"/>
</div>

