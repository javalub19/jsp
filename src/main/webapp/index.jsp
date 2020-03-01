<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="calculator" class="pl.sda.jsp.utils.Calculator"/>
<html>
<head>
    <title>Hello World</title>
</head>
<body>

<p>
    5<sup>2</sup> wynosi:
    <% final int square = calculator.square(5);
        out.print(square);
    %>
</p>


</body>
</html>
