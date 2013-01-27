
<%@ page import="com.rvajug.Member" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'member.label', default: 'Member')}" />
    <title><g:message code="default.show.label" args="[entityName]" /></title>
</head>
<body>
<div id="show-member" class="content scaffold-show" role="main">
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <div class="membershipCard">
        <img src="${createLink(controller:'image', action:'file', id: memberInstance?.image?.id)}" class="small-sq-img"/>
        <div class="membershipTitle">
            <hr/>
            <p class="membershipH1">${memberInstance?.memberType.toString()} Member</p>
            <p class="membershipFont"><g:fieldValue bean="${memberInstance}" field="firstName"/>&nbsp;<g:fieldValue bean="${memberInstance}" field="lastName"/></p>
            <hr/>
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
    <br/>
    <div style="clear:both;"></div>
</div>
</body>
</html>