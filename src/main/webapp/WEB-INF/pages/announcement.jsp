<%--
  Created by IntelliJ IDEA.
  User: gaoyounan
  Date: 2018/7/16
  Time: 下午8:40
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: yiren
  Date: 2018-07-16
  Time: 16:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Announcements</title>
</head>
<body>
<table >
    <thead >
    <tr>
        <th>Title</th>
        <th>Content</th>
        <th>ValidUntil</th>
        <th></th>
    </tr>
    </thead>
    <tbody>
    <c:forEach items="${announcementList}" var="announcement">
        <tr>
            <td>${announcement.title}</td>
            <td>${announcement.content}</td>
            <td>${announcement.validUntil}</td>
            <th><button type="button" >Delete</button></th>
        </tr>
    </c:forEach>
    </tbody>
</table>
</body>
</html>

