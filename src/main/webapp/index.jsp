<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>

<%
    request.getSession().invalidate();
    session = request.getSession();
    session.setAttribute("userId", 123456);
%>

<a href="session.jsp">session</a>
</body>
</html>
