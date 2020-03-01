<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private long visitCount = 0; %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>

<p>Server name: ${pageContext.request.serverName}</p>
<p>Server port: ${pageContext.request.serverPort}</p>
<p>Request URI: ${pageContext.request.requestURI}</p>

<jsp:forward page="redirected.jsp">
    <jsp:param name="myParam" value="my parameter"/>
</jsp:forward>
</body>
</html>
