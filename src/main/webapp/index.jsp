<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%! private long visitCount = 0; %>
<html>
<head>
    <title>Hello World</title>
</head>
<body>
<p>Licznik odwiedzin: <%= ++visitCount%>
</p>
</body>
</html>
