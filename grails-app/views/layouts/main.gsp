<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Grails"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${resource(dir: 'images', file: 'favicon.png')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${resource(dir: 'images', file: 'favicon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${resource(dir: 'images', file: 'favicon.png')}">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'main.css')}" type="text/css">
		<link rel="stylesheet" href="${resource(dir: 'css', file: 'mobile.css')}" type="text/css">
		<g:layoutHead/>
		<r:layoutResources />
	</head>
	<body>
        <div id="header">
            <div id="grailsLogo" role="banner">
                <g:link uri="/">
                    <img src="${resource(dir: 'images', file: 'rvajug.png')}" class="headerlogo" alt="RVA JUG"/>
                </g:link>
            </div>
            <div class="headerNav">
                <g:link uri="/about" class="navChoice">ABOUT</g:link>|
                <g:link controller="event" class="navChoice">EVENTS</g:link>|
                <g:link controller="member" class="navChoice">MEMBERS</g:link>|
                <g:link controller="speaker" class="navChoice">SPEAKERS</g:link>|
                <g:link controller="sponsor" class="navChoice">SPONSORS</g:link>
            </div>
        </div>
        <div style="clear: both;"></div>
        <hr/>
		<g:layoutBody/>
        <hr/>
        <div class="gold-sponsors">
            &nbsp;
        </div>
        <hr/>
		<div class="footer" role="contentinfo">
            Copyright &copy; ${java.util.Calendar.getInstance().get(Calendar.YEAR)}, Richmond Java Users Group.
        </div>
		<div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
		<g:javascript library="application"/>
		<r:layoutResources />
	</body>
</html>
