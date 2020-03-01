<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="calculator" class="pl.sda.jsp.utils.Calculator"/>
<jsp:setProperty name="calculator" property="n" value="5"/>
<html>
<head>
    <title>Hello World</title>
</head>
<body>

<p>
    <%= calculator.getN()%><sup>2</sup> wynosi:
    <%
        final int square = calculator.square();
        out.print(square);
    %>
</p>


</body>
</html>
