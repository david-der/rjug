<%@ page import="com.rvajug.Event" %>



<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="event.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${eventInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'eventDate', 'error')} required">
	<label for="eventDate">
		<g:message code="event.eventDate.label" default="Event Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="eventDate" precision="day"  value="${eventInstance?.eventDate}"  />
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'speaker', 'error')} required">
	<label for="speaker">
		<g:message code="event.speaker.label" default="Speaker" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="speaker" name="speaker.id" from="${com.rvajug.Speaker.list()}" optionKey="id" required="" value="${eventInstance?.speaker?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'sponsor', 'error')} required">
	<label for="sponsor">
		<g:message code="event.sponsor.label" default="Sponsor" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="sponsor" name="sponsor.id" from="${com.rvajug.Sponsor.list()}" optionKey="id" required="" value="${eventInstance?.sponsor?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: eventInstance, field: 'topic', 'error')} required">
	<label for="topic">
		<g:message code="event.topic.label" default="Topic" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="topic" name="topic.id" from="${com.rvajug.Topic.list()}" optionKey="id" required="" value="${eventInstance?.topic?.id}" class="many-to-one"/>
</div>

