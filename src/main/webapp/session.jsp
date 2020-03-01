<%@ page import="java.util.Date" %><%--
  Created by IntelliJ IDEA.
  User: lkre
  Date: 01.03.2020
  Time: 15:10
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sesje</title>
</head>
<body>
<%
    Date creationTime = new Date(session.getCreationTime());
    Date lastAccessedTime = new Date(session.getLastAccessedTime());
    String userId = session.getAttribute("userId").toString();
    Integer integer = Integer.getInteger(userId);
    String sessionId = session.getId();
%>

<table>
    <tr>
        <th>Session info</th>
        <th>Value</th>
    </tr>
    <tr>
        <td>sessionId</td>
        <td><%= sessionId%>
    </tr>
    <tr>
        <td>userId</td>
        <td><%= userId %>
        </td>
    </tr>
    <tr>
        <td>Creation time:</td>
        <td><%= creationTime.toString() %>
        </td>
    </tr>
    <tr>
        <td>Last accessed time:</td>
        <td><%= lastAccessedTime.toString()%>
        </td>
    </tr>
</table>

</body>
</html>
