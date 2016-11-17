<%--网站左边--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="w355">

    <!--========================-->
    <div class="Lj-cost">
        <span>
            <!--依法缴纳维护费-->
            <%--<img src="../../images/icon_01_22.jpg"/>--%>
            <c:forEach var="each" items="${contentList}">
                <c:if test="${each.id==71}">
                    <img src="${each.channel.logo}">
                </c:if>
            </c:forEach>
        </span>
        <div class="Lj-roll">
            <ul>
                <li>
                    <%--丽江古城维护费--%>
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id>=71&&each.id<=80}">
                                <img src="../../images/icon_01_23.png"/><a href="Lj-NewList-Minute.jsp">
                                   ${each.title}
                                </a>
                            </c:if>
                        </c:forEach>
                </li>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费征收的法律政策依据</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费的收费标准</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费免征对象</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费征收方式</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费的管理使用原则</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">对偷逃规避古城维护费征收的行政处罚</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费征收工作综合整治行动</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">丽江古城维护费票据抽奖办法（试行）</a></li>--%>
                <%--<li><img src="../../images/icon_01_23.png"/><a href="javascript:">关于对《丽江古城维护费票据抽奖办法< 试行>》有关问题的解释 </a></li>--%>
            </ul>
        </div>
    </div>
    <!--========================-->

    <!--========================-->
    <div class="Lj-img">
        <span>
            <%--<img src="../../images/img_01_07.jpg"/>--%>
            <c:forEach var="each" items="${contentList}">
                <c:if test="${each.id==87}">
                    <img src="${each.channel.logo}"
                </c:if>
            </c:forEach>
        </span>
        <a href="video">
            <%--<img src="../../images/img_01_08.jpg"/>--%>
                <c:forEach var="each" items="${contentList}">
                    <c:if test="${each.id==88}">
                        <img src="${each.channel.logo}"
                    </c:if>
                </c:forEach>
        </a>
    </div>
    <!--========================-->

    <!--========================-->
    <div class="Lj-love">
        <span>
            <!--恋在丽江-->
            <%--<img src="../../images/img_01_09.jpg"/>--%>
            <c:forEach var="each" items="${contentList}">
                <c:if test="${each.id==81}">
                    <img src="${each.channel.logo}"
                </c:if>
            </c:forEach>
        </span>
        <div class="Lj-trends">
            <ul>
                <c:forEach var="each" items="${contentList}">
                    <c:if test="${each.id>=81&&each.id<=84}">
                        <a href="love">
                            ${each.title}
                    </a>
                    </c:if>
                </c:forEach>
                <%--<li><a href="javascript:">22:16 还有两个小时就要走了，已经数不清来了多少次，每一次的感已经数不</a></li>--%>
                <%--<li><a href="javascript:">22:16 还有两个小时就要走了，已经数不清来了多少次，每一次的感已经数不</a></li>--%>
                <%--<li><a href="javascript:">22:16 还有两个小时就要走了，已经数不清来了多少次，每一次的感已经数不</a></li>--%>
                <%--<li><a href="javascript:">22:16 还有两个小时就要走了，已经数不清来了多少次，每一次的感已经数不</a></li>--%>
            </ul>
        </div>
    </div>
    <!--========================-->

    <!--========================-->
    <div class="Lj-advert">
        <a href="javascript:">
            <%--<img src="../../images/img_01_25.jpg"/>--%>
            <c:forEach var="each" items="${contentList}">
                <c:if test="${each.id==89}">
                    <img src="${each.channel.logo}"
                </c:if>
            </c:forEach>
        </a>
        <a href="javascript:">
            <%--<img src="../../images/img_01_26.jpg"/>--%>
                <c:forEach var="each" items="${contentList}">
                    <c:if test="${each.id==90}">
                        <img src="${each.channel.logo}"
                    </c:if>
                </c:forEach>
        </a>
        <a href="javascript:">
            <%--<img src="../../images/img_01_27.jpg"/>--%>
                <c:forEach var="each" items="${contentList}">
                    <c:if test="${each.id==91}">
                        <img src="${each.channel.logo}"
                    </c:if>
                </c:forEach>
        </a>
    </div>
    <!--========================-->

</div>
