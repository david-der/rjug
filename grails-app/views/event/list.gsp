
<%@ page import="com.rvajug.Event" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'event.label', default: 'Event')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-event" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-event" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="eventDate" title="${message(code: 'event.eventDate.label', default: 'Event Date')}" />
					
						<th><g:message code="event.image.label" default="Image" /></th>
					
						<th><g:message code="event.speaker.label" default="Speaker" /></th>
					
						<th><g:message code="event.sponsor.label" default="Sponsor" /></th>
					
						<th><g:message code="event.topic.label" default="Topic" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${eventInstanceList}" status="i" var="eventInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${eventInstance.id}"><g:formatDate date="${eventInstance.eventDate}" /></g:link></td>
					
						<td>${fieldValue(bean: eventInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "speaker")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "sponsor")}</td>
					
						<td>${fieldValue(bean: eventInstance, field: "topic")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${eventInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
