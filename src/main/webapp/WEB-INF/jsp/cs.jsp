<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2016/11/7
  Time: 16:51
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
dfdf<br>
<%--<c:forEach var="each" items="${titleList}">--%>
    <%--&lt;%&ndash;${each.titleName}&ndash;%&gt;--%>
    <%--${each.part.columnName}--%>
<%--</c:forEach>--%>


<c:forEach var="each" items="${titleList}">

    <c:if test="${each.id==87}">
        <li id="f1" class="dq" onclick="changeflash(1)">
                ${each.part.columnName}
        </li>
    </c:if>
    <c:if test="${each.id==65}">
        <li id="f1" class="dq" onclick="changeflash(1)">
                ${each.part.columnName}
        </li>
    </c:if>
    <c:if test="${each.id==45}">
        <li id="f1" class="dq" onclick="changeflash(1)">
                ${each.part.columnName}
        </li>
    </c:if>
</c:forEach>
</body>
</html>
