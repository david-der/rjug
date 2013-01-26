<%@ page import="com.rvajug.Attendance" %>



<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'member', 'error')} required">
	<label for="member">
		<g:message code="attendance.member.label" default="Member" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="member" name="member.id" from="${com.rvajug.Member.list()}" optionKey="id" required="" value="${attendanceInstance?.member?.id}" class="many-to-one"/>
</div>

<div class="fieldcontain ${hasErrors(bean: attendanceInstance, field: 'event', 'error')} required">
	<label for="event">
		<g:message code="attendance.event.label" default="Event" />
		<span class="required-indicator">*</span>
	</label>
	<g:select id="event" name="event.id" from="${com.rvajug.Event.list()}" optionKey="id" required="" value="${attendanceInstance?.event?.id}" class="many-to-one"/>
</div>

