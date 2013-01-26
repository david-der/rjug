
<%@ page import="com.rvajug.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<a href="#show-member" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
    </ul>
</div>
<div id="show-member" class="content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="membershipCard">
        <img src="${createLink(controller:'image', action:'file', id: memberInstance?.image?.id)}" class="small-sq-img"/>
        <div class="membershipTitle">
            <p class="membershipH1">${memberInstance?.memberType.toString()} Member</p>
            <p class="membershipFont"><g:fieldValue bean="${memberInstance}" field="firstName"/>&nbsp;<g:fieldValue bean="${memberInstance}" field="lastName"/></p>
        </div>
        <div style="clear:both;"></div>
        <ol class="property-list member">
            <g:if test="${memberInstance?.email}">
                <li class="fieldcontain">
                    <span id="email-label" class="property-label"><g:message code="member.email.label" default="Email Address" /></span>

                    <span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${memberInstance}" field="email"/></span>

                </li>
            </g:if>
            <g:if test="${memberInstance?.company}">
                <li class="fieldcontain">
                    <span id="company-label" class="property-label"><g:message code="member.company.label" default="Company" /></span>

                    <span class="property-value" aria-labelledby="company-label"><g:link controller="company" action="show" id="${memberInstance?.company?.id}">${memberInstance?.company?.encodeAsHTML()}</g:link></span>

                </li>
            </g:if>
            <li class="fieldcontain">
                <span id="since-label" class="property-label">Member Since</span>
                <span class="property-value" aria-labelledby="company-label">Forever</span>
            </li>
        </ol>
    </div>
    <div style="clear:both;"></div>
    <g:form>
        <fieldset class="buttons">
            <g:hiddenField name="id" value="${memberInstance?.id}" />
            <g:link class="edit" action="edit" id="${memberInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
            <g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
        </fieldset>
    </g:form>
</div>
</body>
</html>