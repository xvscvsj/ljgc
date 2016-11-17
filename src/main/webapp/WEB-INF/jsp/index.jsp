<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <%--<base href="/">--%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--首页</title>
<link href="../../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../../js/change-tab.js"></script>
<script type="text/javascript" src="../../js/Page-loading.js"></script>
<script type="text/javascript" src="../../js/Bb-tile.js"></script>
</head>

<body>
   <!--background picture begin-->
   <div class="picture" id="picture"><img id="bgImg" src="../../images/home_top_bg.jpg" height="742"></div>
   <!--background picture end-->

   <div class="total" id="total">
   
      <!--total-width begin-->
      <div class="w1180">
      
         <!--top begin-->
         <jsp:include page="include_front/common_head.jsp"/>
         <!--top end-->
         
         <!--center begin-->
         <div class="Lj-cen">
         
            <!--left begin-->

            
               <!--========================-->
               <jsp:include page="include_front/common_left.jsp"/>
               <!--========================-->
                

            <!--left end-->
            
            <!--right begin-->
            <div class="w786">
            
              <!--=================-->

              <div class="roll-top" >
                   <c:forEach var="each" items="${contentList}">
                       <c:if test="${each.id==27}">
                         <span> ${each.channel.name}</span>
                       </c:if>
                   </c:forEach>
                  <%--<span> 古城动态</span>--%>
                  <a href="javascript:">更多 > </a></div>
              <!--=================-->
             
              <!--=================-->
              <div class="Lj-news">
               <div class="news">
                 <ul>
                     <!--古城动态-->
                     <c:forEach var="each" items="${contentList}">
                        <c:if test="${each.id==27}">
                           <li><img src="../../images/icon_01_38.jpg"/><a href="newlist">
                             ${each.title}
                           </a>
                        </c:if>
                         <c:if test="${each.id==28}">
                            <li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">
                             ${each.title}
                           </a>
                         </c:if>
                         <c:if test="${each.id==29}">
                            <li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">
                             ${each.title}
                            </a>
                         </c:if>
                         <c:if test="${each.id==30}">
                           <li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">
                             ${each.title}
                           </a>
                         </c:if>
                     </c:forEach>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">云岭职工跨越发展先锋活动暨云岭职工人才工程示范点</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                   <%--<li><img src="../../images/icon_01_38.jpg"/><a href="javascript:">召开局党组扩大会议暨拍砖会意见建议交</a></li>--%>
                 </ul>
                </div>
                <div class="news-flash">
                   <div class="news-pad"><a href="javascript:">
                       <%--<img src="../../images/img_01_10.jpg" width="360" height="245"/>--%>
                       <c:forEach var="each" items="${contentList}">
                           <c:if test="${each.id==27}">
                               <img src="${each.titleImg}"width="360" height="245">
                           </c:if>
                       </c:forEach>
                   </a></div>
                </div>
                <div class="advert"><a href="javascript:"><img src="../../images/img_01_30.jpg"/></a></div>
              </div>
              <!--=================-->
              
              <!--=================-->
              <div class="Lj-manage">

                 <div class="manage-top">
                    <ul>
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id==31}">
                                <li id="tab1" class="tab1" onclick="tabflash(1)">
                                        ${each.channel.name}
                                </li>
                            </c:if>

                            <c:if test="${each.id==35}">
                                <li id="tab2" onclick="tabflash(2)">
                                        ${each.channel.name}
                                </li>
                            </c:if>

                            <c:if test="${each.id==39}">
                                <li id="tab3" onclick="tabflash(3)">
                                        ${each.channel.name}
                                </li>
                            </c:if>
                        </c:forEach>
                       <%--<li id="tab1" class="tab1" onclick="tabflash(1)">管理指南</li>--%>
                       <%--<li id="tab2" onclick="tabflash(2)">法律法规</li>--%>
                       <%--<li id="tab3" onclick="tabflash(3)">便民服务</li>--%>
                    </ul>
                    <div class="manage-more">
                       <span>古城保护与管理</span>
                       <a href="javascript:">more&nbsp;></a>
                    </div>
                 </div>

                  <div class="news-flash" style="right: auto">
                      <div class="news-pad">
                          <c:forEach var="each" items="${contentList}">
                              <c:if test="${each.id==31}">
                                  <img src="${each.titleImg}"width="788" height="260">
                              </c:if>
                          </c:forEach>
                      </div>
                  </div>
                 <!--text begin-->
                 <div class="manage-text" id="text1" style=" display:block">

                    <ul>
                        <!--管理指南-->
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id>=31&&each.id<=34}">
                            <li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">
                                ${each.title}
                            </a>
                            </li>
                            </c:if>
                        </c:forEach>
                            <%--<c:if test="${each.id==32}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==33}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==34}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>

                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽遗产丽江责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽丽产丽产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       </ul>
                       <%--<ul>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护护管护管护管护管护管护管护管局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理遗产丽江古城保护管遗产丽江古城保护管职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                    <%--</ul>--%>

                 </div>
                 <div class="manage-text" id="text2" style=" display:none">
                    <ul>
                        <!--法律法规-->
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id>=35&&each.id<=38}">
                                <li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">
                                        ${each.title}
                                </a></li>
                            </c:if>
                            <%--<c:if test="${each.id==36}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==37}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==38}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                        </c:forEach>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽遗产丽江责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽产丽产丽产丽产丽产丽产丽产丽产丽产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--</ul>--%>
                       <%--<ul>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护护管护管护管护管护管护管护管局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理遗产丽江古城保护管遗产丽江古城保护管职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                    <%--</ul>--%>
                 </div>
                 <div class="manage-text" id="text3" style=" display:none">
                    <ul>
                        <!--管理指南-->
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id>=39&&each.id<=42}">
                                <li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">
                                        ${each.title}
                                </a></li>
                            </c:if>
                            <%--<c:if test="${each.id==40}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==41}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==42}">--%>
                                <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">--%>
                                        <%--${each.title}--%>
                                <%--</a></li>--%>
                            <%--</c:if>--%>
                        </c:forEach>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽遗产丽江责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽产丽产丽产丽产丽产丽产丽产丽产丽产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--</ul>--%>
                       <%--<ul>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护护管护管护管护管护管护管护管局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理遗产丽江古城保护管遗产丽江古城保护管职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                       <%--<li><img src="../../images/icon_01_41.jpg"/><a href="javascript:">世界文化遗产丽江古城保护管理局职能职责</a></li>--%>
                    <%--</ul>--%>
                 </div>
                 <!--text end-->
              </div>
              <!--=================-->
              
              <!--=================-->
              <div class="Lj-open">
                 <div class="open-title"><a href="index.jsp">
                     <%--<img src="../../images/img_01_11.jpg"/></a><span><img src="../../images/icon_01_27.png"></span>--%>

                     <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id==13}">
                                   <img src="${each.titleImg}">
                                </c:if>
                         </c:forEach>
                         <div>
                     <c:forEach var="each" items="${contentList}">
                         <c:if test="${each.id==13}">
                             ${each.title}
                         </c:if>
                     </c:forEach>
                     <%--俯瞰古城--%>
                 </div></a></div>
                  <div class="open-two"><div class="open-cen"><a href="javascript:">
                      <%--<img src="../../images/img_01_12.jpg"/>--%>
                          <c:forEach var="each" items="${contentList}">
                              <c:if test="${each.id==14}">
                                  <img src="${each.titleImg}">
                              </c:if>
                          </c:forEach>
                  </a><span>
                       <c:forEach var="each" items="${contentList}">
                           <c:if test="${each.id==14}">
                               ${each.title}
                           </c:if>
                       </c:forEach>
                      <%--古道晨曦--%>
                  </span></div>
                 <div class="open-m"><a href="javascript:">
                     <%--<img src="../../images/img_01_13.jpg"/>--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==15}">
                                 <img src="${each.titleImg}">
                             </c:if>
                         </c:forEach>
                 </a><span>
                      <c:forEach var="each" items="${contentList}">
                          <c:if test="${each.id==15}">
                              ${each.title}
                          </c:if>
                      </c:forEach><%--古城庭院--%>
                 </span></div>
                 <div class="open-m"><a href="javascript:">
                     <%--<img src="../../images/img_01_14.jpg"/>--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==16}">
                                 <img src="${each.titleImg}">
                             </c:if>
                         </c:forEach>
                 </a><span>\
                      <c:forEach var="each" items="${contentList}">
                          <c:if test="${each.id==16}">
                              ${each.title}
                          </c:if>
                      </c:forEach>
                     <%--银装素裹--%>
                 </span></div>
                 </div>
                 <div class="open-r"><a href="javascript:">
                     <%--<img src="../../images/img_01_15.jpg">--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==17}">
                                 <img src="${each.titleImg}">
                             </c:if>
                         </c:forEach>
                 </a><span>
                      <c:forEach var="each" items="${contentList}">
                          <c:if test="${each.id==17}">
                              ${each.title}
                          </c:if>
                      </c:forEach>
                     <%--小桥流水--%>
                 </span></div>
              </div>
              <!--=================-->
              
              <!--=================-->
              <div class="Lj-conncet">
                   <ul>
                     <li class="conncet-1"><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--忠义木府--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==60}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--披新戴月--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==61}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--古街夜色--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==62}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--古城春雪--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==63}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--茶马古道--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==64}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a></li>
                     <li class="conncet-2">
                          <a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                              <%--四方街--%>
                              <c:forEach var="each" items="${contentList}">
                                  <c:if test="${each.id==65}">
                                      ${each.title}
                                  </c:if>
                              </c:forEach>
                          </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--大水车--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==66}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--丽江酒吧街--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==67}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--古城漫步--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==68}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--黑龙潭--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==69}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a><a href="javascript:"><img src="../../images/icon_01_29.jpg"/>
                         <%--龙腾古城--%>
                         <c:forEach var="each" items="${contentList}">
                             <c:if test="${each.id==70}">
                                 ${each.title}
                             </c:if>
                         </c:forEach>
                     </a>
                     </li>
                   </ul>
                 
              </div>
              <!--=================-->
              
              <!--=================-->
              <div class="Lj-culture">
                 <div class="culture-top">
                      <c:forEach var="each" items="${contentList}">
                     <c:if test="${each.id==43}">
                         <li id="bd1" class="bd1" onclick="bdflash(1)">
                                 ${each.channel.name}
                         </li>
                     </c:if>
                          <c:if test="${each.id==47}">
                          <li id="bd2" onclick="bdflash(2)">
                              ${each.channel.name}
                          </li>
                          </c:if>
                          <c:if test="${each.id==51}">
                              <li id="bd3" onclick="bdflash(3)">
                                      ${each.channel.name}
                              </li>
                          </c:if>
                 </c:forEach>
                    <%--<ul>--%>
                       <%--<li id="bd1" class="bd1" onclick="bdflash(1)">丽江古城</li>--%>
                       <%--<li id="bd2" onclick="bdflash(2)">东巴文化</li>--%>
                       <%--<li id="bd3" onclick="bdflash(3)">民俗民风</li>--%>
                    <%--</ul>--%>
                    <div class="manage-more">
                       <span>文化古城</span>
                       <a href="javascript:">more&nbsp;></a>
                    </div>
                 </div>
                 
                 <div class="culture-text" id="cul1" style="display:block">
                    <ul>
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id>=43&&each.id<=46}">
                            <li><span><a href="javascript:">
                                ${each.title}
                              <div>${each.description}</div>
                            </a></span>
                            </c:if>
                                <%--<c:if test="${each.id==44}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                            <%--<c:if test="${each.id==45}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${each.id==46}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                        </c:forEach>
                       <%--<li><span><a href="javascript:">1丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                    </ul>
                   
                 </div>
                 <div class="culture-text" id="cul2" style="display:none">
                    <ul>
                        <c:forEach var="each" items="${contentList}">
                        <c:if test="${each.id>=47&&each.id<=50}">
                        <li><span><a href="javascript:">
                                ${each.title}
                                    <div>${each.description}</div>
                        </a></span>
                            </c:if>
                            <%--<c:if test="${each.id==48}">--%>
                        <%--<li><span><a href="javascript:">--%>
                                <%--${each.title}--%>
                                    <%--<div>${each.description}</div>--%>
                        <%--</a></span>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==49}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${each.id==50}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                            </c:forEach>
                       <%--<li><span><a href="javascript:">2丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                    </ul>
                   
                 </div>
                 <div class="culture-text" id="cul3" style="display:none">
                    <ul>
                        <c:forEach var="each" items="${contentList}">
                        <c:if test="${each.id>=51&&each.id<=54}">
                        <li><span><a href="javascript:">
                                ${each.title}
                                    <div>${each.description}</div>
                        </a></span>
                            </c:if>
                            <%--<c:if test="${each.id==52}">--%>
                        <%--<li><span><a href="javascript:">--%>
                                <%--${each.title}--%>
                                    <%--<div>${each.description}</div>--%>
                        <%--</a></span>--%>
                            <%--</c:if>--%>
                            <%--<c:if test="${each.id==53}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                                <%--<c:if test="${each.id==54}">--%>
                            <%--<li><span><a href="javascript:">--%>
                                    <%--${each.title}--%>
                                        <%--<div>${each.description}</div>--%>
                            <%--</a></span>--%>
                                <%--</c:if>--%>
                            </c:forEach>
                       <%--<li><span><a href="javascript:">3丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                       <%--<li><span><a href="javascript:">丽江古城文明公约</a></span><div>丽江的文明是丽江世世代代的人们创造创造自五湖四海的人们创造的。来到丽江，创造</div></li>--%>
                    </ul>

                 </div>
              
              </div>
              <!--=================-->
              
              <!--=================-->
              <div class="Lj-stay">
                 <div class="stay-top">
                   <div class="stay-right"><span>
                       <c:forEach var="each" items="${contentList}">
                           <c:if test="${each.id==55}">
                               ${each.channel.name}
                           </c:if>
                       </c:forEach>
                           </span>
                    <%--<span>住在丽江</span>--%>
                    <a href="javascript:">more ></a>
                   </div>
                 </div>
                 <div class="stay-text">
                     <ul>
                        <li><a href="index.jsp">
                            <%--<img src="../../images/img_01_16.jpg">--%>
                                <%--<c:forEach var="each" items="${contentList}">--%>
                                    <%--<c:if test="${each.id==55}">--%>
                                       <%--<img src="${each.titleImg}">--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>
                        <%--</a>
                        <%--<span>--%>
                            <%--丽江狮山竹苑--%>
                            <c:forEach var="each" items="${contentList}">
                                <li>
                                <c:if test="${each.id>=55&&each.id<=59}">
                                    <img src="${each.titleImg}">
                                    ${each.title}
                                </c:if>
                                 </li>
                            </c:forEach>
                        </a></li>
                        <li><a href="javascript:">
                            <%--<img src="../../images/img_01_17.jpg"></a><span><a href="javascript:">--%>
                            <%--和府皇冠假日酒店--%>
                                <%--<c:forEach var="each" items="${contentList}">--%>
                                    <%--<c:if test="${each.id==56}">--%>
                                        <%--<img src="${each.titleImg}">--%>
                                        <%--${each.title}--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>
                        <%--</a></li>--%>
                        <%--<li><a href="javascript:">--%>
                            <%--&lt;%&ndash;<img src="../../images/img_01_18.jpg"></a><span><a href="javascript:">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;第一观景台客栈&ndash;%&gt;--%>
                            <%--<c:forEach var="each" items="${contentList}">--%>
                                <%--<c:if test="${each.id==57}">--%>
                                    <%--<img src="${each.titleImg}">--%>
                                    <%--${each.title}--%>
                                <%--</c:if>--%>
                            <%--</c:forEach>--%>
                        <%--</a></li>--%>
                        <%--<li><a href="index.jsp">--%>
                            <%--&lt;%&ndash;<img src="../../images/img_01_19.jpg"></a><span><a href="javascript:">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;摆渡精致客栈&ndash;%&gt;--%>
                                <%--<c:forEach var="each" items="${contentList}">--%>
                                    <%--<c:if test="${each.id==58}">--%>
                                        <%--<img src="${each.titleImg}">--%>
                                        <%--${each.title}--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>
                        <%--</a></li>--%>
                        <%--<li><a href="javascript:">--%>
                            <%--&lt;%&ndash;<img src="../../images/img_01_20.jpg"></a><span><a href="javascript:">&ndash;%&gt;--%>
                            <%--&lt;%&ndash;七味生活小院&ndash;%&gt;--%>
                                <%--<c:forEach var="each" items="${contentList}">--%>
                                    <%--<c:if test="${each.id==59}">--%>
                                        <%--<img src="${each.titleImg}">--%>
                                        <%--${each.title}--%>
                                    <%--</c:if>--%>
                                <%--</c:forEach>--%>
                        </a></li>
                     </ul>
                 </div>
              </div>
              <!--=================-->
              
            </div>
            <!--right end-->
            
         </div>
         <!--center end-->
      
         <!--footer begin-->
         <jsp:include page="include_front/common_footer.jsp"/>
      </div>
      <!--total-width end-->
   
   </div> 
   <%--<!--屏蔽右键,F12 begin--><script type="text/javascript" src="../../js/Shielding-key.js"></script><!--屏蔽右键,F12 end-->--%>
</body>
</html>
