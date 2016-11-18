<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="top">
    <a href="back_index" class="logo"></a>
    <div class="search">
        <div class="input-prepend">
           <form action="search" method="get">
            <button type="submit" style="height:31px;width: 40px;background-color: red"><span class="add-on orange"><span class="icon-search icon-white"></span></span></button>
            <input type="text" placeholder="关键字搜索..." name="keyword"/>
           </form>>
        </div>
    </div>
</div>
<div class="nContainer">
    <ul class="navigation">
        <li class="active"><a href="back_index" class="blblue" style="color: lightblue">流量统计</a></li>
        <li>
            <a href="#" class="blyellow" style="color: lightblue">栏目管理</a>
            <div class="open"></div>
            <ul>
                <li><a href="back_channelList">查看栏目</a></li>
                <%--<li><a href="back_addChannelList">添加栏目</a></li>--%>
            </ul>
        </li>
        <li>
            <a href="#" class="blgreen" style="color: lightblue">商铺管理</a>
            <div class="open"></div>
            <ul>
                <li><a href="#">查看商铺</a></li>
                <li><a href="validation.html">商铺管理</a></li>
            </ul>
        </li>
        <!--<li><a href="statistic.html" class="blred">Statistic</a></li>                -->
        <li>
            <a href="#" class="bldblue" style="color: lightblue">订单管理</a>
            <div class="open"></div>
            <ul>
                <li><a href="back_order">查看订单</a></li>
            </ul>
        </li>
        <li>
            <a href="#" class="blpurple" style="color: lightblue">内容管理</a>
            <div class="open"></div>
            <ul>
                <li><a href="faq.html">查看内容</a></li>
                <li><a href="back_login.jsp">添加内容</a></li>
            </ul>
        </li>
        <li>
            <a href="#" class="bldblue" style="color: lightblue">其它</a>
        </li>
    </ul>
    <a class="close">
        <span class="ico-remove"></span>
    </a>
</div>
<div class="widget">
    <div class="datepicker"></div>
</div>