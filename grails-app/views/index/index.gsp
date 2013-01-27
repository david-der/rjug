<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Richmond Java Users Group</title>
	</head>
	<body>
        <div class="content" role="main">
        <g:link controller="admin">Admin</g:link>
		<h1>Events for ${java.util.Calendar.getInstance().get(Calendar.YEAR)}</h1>
        <table>
            <thead>
                <th>Date</th>
                <th>Topic</th>
                <th>Speaker</th>
                <th>Sponsor</th>
                <th>Location</th>
            </thead>
            <tbody>
            <g:each in="${eventInstanceList}" status="i" var="eventInstance">
                <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                    <td><g:formatDate format='MM.dd' locale="${Locale.ENGLISH}" date="${eventInstance.eventDate}" /></td>

                    <td>${fieldValue(bean: eventInstance, field: "topic")}</td>

                    <td>${fieldValue(bean: eventInstance, field: "speaker")}</td>

                    <td>${fieldValue(bean: eventInstance, field: "sponsor")}</td>

                    <td>University of Richmond</td>

                </tr>
            </g:each>
            </tbody>
        </table>
        </div>
	</body>
</html>
