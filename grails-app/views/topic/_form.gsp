<%@ page import="com.rvajug.Topic" %>



<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'description', 'error')} ">
	<label for="description">
		<g:message code="topic.description.label" default="Description" />
		
	</label>
	<g:textField name="description" value="${topicInstance?.description}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="topic.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="image" name="image.id" from="${com.rvajug.Image.list()}" optionKey="id" required="" value="${topicInstance?.image?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: topicInstance, field: 'topicName', 'error')} ">
	<label for="topicName">
		<g:message code="topic.topicName.label" default="Topic Name" />
		
	</label>
	<g:textField name="topicName" value="${topicInstance?.topicName}"/>
</div>

