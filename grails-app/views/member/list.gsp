<%@ page import="com.rvajug.Member" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-member" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
				<thead>
					<tr>
					
						<th>&nbsp;</th>
                        <g:sortableColumn property="name" title="${message(code: 'member.name.label', default: 'Name')}" />
					
						<th><g:message code="member.company.label" default="Company" /></th>
					
						<g:sortableColumn property="memberType" title="${message(code: 'member.memberType.label', default: 'Member Type')}" />
                        <g:sortableColumn property="points" title="${message(code: 'member.points.label', default: 'Points')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${memberInstanceList}" status="i" var="memberInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><img src="${createLink(controller:'image', action:'file', id: memberInstance?.image?.id)}" class="super-small-img"/></td>
                        <td><g:link action="profile" id="${memberInstance.id}">${memberInstance.firstName +" "+ memberInstance.lastName}</g:link></td>

						<td>${fieldValue(bean: memberInstance, field: "company")}</td>
					
						<td>${fieldValue(bean: memberInstance, field: "memberType")}</td>
                        <td>2000</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${memberInstanceTotal}" />
			</div>
		</div>
	</body>
</html>
