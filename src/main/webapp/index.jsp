<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>

<%
    Cookie cookie = new Cookie("searchId", String.valueOf(13456));
    cookie.setMaxAge(60 * 60 * 24);
    response.addCookie(cookie);
%>

<a href="search.jsp">search</a>
</body>
</html>
