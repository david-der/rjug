
<%@ page import="com.rvajug.Speaker" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'speaker.label', default: 'Speaker')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-speaker" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-speaker" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<g:sortableColumn property="background" title="${message(code: 'speaker.background.label', default: 'Background')}" />
					
						<th><g:message code="speaker.company.label" default="Company" /></th>
					
						<g:sortableColumn property="firstName" title="${message(code: 'speaker.firstName.label', default: 'First Name')}" />
					
						<th><g:message code="speaker.image.label" default="Image" /></th>
					
						<g:sortableColumn property="lastName" title="${message(code: 'speaker.lastName.label', default: 'Last Name')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${speakerInstanceList}" status="i" var="speakerInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${speakerInstance.id}">${fieldValue(bean: speakerInstance, field: "background")}</g:link></td>
					
						<td>${fieldValue(bean: speakerInstance, field: "company")}</td>
					
						<td>${fieldValue(bean: speakerInstance, field: "firstName")}</td>
					
						<td>${fieldValue(bean: speakerInstance, field: "image")}</td>
					
						<td>${fieldValue(bean: speakerInstance, field: "lastName")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${speakerInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
