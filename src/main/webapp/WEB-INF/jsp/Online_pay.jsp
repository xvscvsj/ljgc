<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2016/11/13
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
恭喜你，成功提交订单!<br>
<%--<a href="https://www.alipay.com/"><h2 style="color: #c32a0b">立即支付</h2></a>--%>
<a href="payment?orderId=${orderId}"><h2 style="color: #c32a0b">立即支付</h2></a>
<a href="online"><h2 style="color:#b8b1ab">返回首页</h2></a>
<%--打印id:${orderId}--%>
</body>
</html>
