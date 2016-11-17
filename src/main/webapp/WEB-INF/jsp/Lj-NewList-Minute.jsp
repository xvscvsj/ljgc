<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--新闻内容</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
</head>

<body>
   <!--background picture begin-->
   <div class="picture" id="picture"><img id="bgImg" src="../images/home_top_bg.jpg" height="742"></div>
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
            <jsp:include page="include_front/common_left.jsp"/>
            <!--left end-->
            
            <!--right begin-->
            <div class="w786">
            
             <!--title begin-->
             <div class="Lj-news-title">
                 <c:forEach var="each" items="${contentList}">
                     <c:if test="${each.id==94}">
                         <img src="${each.channel.logo}">
                           ${each.channel.description}
                     </c:if>
                 </c:forEach>
                 <%--<span>  <img src="../images/icon_06_02.jpg"/></span><div>丽江古城最真实的景区动态信息</div>--%>
                </div>
             <!--title end-->
             
             <!--text begin-->
             <div class="Lj-News-Minute">
             
                <!--=====================-->
                <div class="Minute-title">
                    <c:forEach var="each" items="${contentList}">
                        <c:if test="${each.id>=94&&each.id<=95}">
                          <h1>${each.title}</h1>
                          <span>${each.description}</span>
                        </c:if>
                    </c:forEach>
                   <%--<h1>积极促进古城维护费增收</h1>--%>
                   <%--<span class="source">来源：丽江古城保护管理局</span>--%>
                   <%--<span class="time">时间：2013年09月13日</span>--%>
                </div>
                <!--=====================-->
                
                <!--=====================-->
                <div class="Minute-text" id="right">
                    <%--&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <c:forEach var="each" items="${contentList}">
                        <c:if test="${each.id>=94&&each.id<=95}">
                            <br>  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            ${each.details}
                            <span class="txt"><img src="${each.titleImg}"></span>

                        </c:if>
                    </c:forEach>
                    <%--近日，我局古城维护费征稽支队联合市公安局治安支队二大队、辖区派出所、金硅公司、银海公司举行了为期4天的旅店业治安管理信息系统暨古城维护费征收系统前台培训会。培训内容包括相关法律法规知识、古城维护费代征注意事项及相关规定、旅店相关证照的办证流程、旅店业治安管理信息系统和古城维护费代征系统对接及运用知识。通过培训，各宾馆、酒店、客栈的业主对两个系统的运用有了进一步了解，也增强了古城维护费的代征意识，将对古城维护费的征收工作起到积极促进作用。--%>
                    <%--<span class="txt"><img src="../images/img_02_02.jpg"/>--%>
                    <%--</span><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--近日，我局古城维护费征稽支队联合市公安局治安支队二大队、辖区派出所、金硅公司、银海公司举行了为期4天的旅店业治安管理信息系统暨古城维护费征收系统前台培训会。培训内容包括相关法律法规知识、古城维护费代征注意事项及相关规定、旅店相关证照的办证流程、旅店业治安管理信息系统和古城维护费代征系统对接及运用知识。通过培训，各宾馆、酒店、客栈的业主对两个系统的运用有了进一步了解--%>
                    <%--<br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--近日，我局古城维护费征稽支队联合市公安局治安支队二大队、辖区派出所、金硅公司、银海公司举行了为期4天的旅店业治安管理信息系统暨古城维护费征收系统前台培训会。培训内容包括相关法律法规知识、古城维护费代征注意事项及相关规定、旅店相关证照的办证流程、旅店业治安管理信息系统和古城维护费代征系统对接及运用知识。通过培训，各宾馆、酒店、客栈的业主对两个系统的前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维法规知识、古运用有了进一步了会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法律法规知识、古城维护前台培训会。培训内容包括相关法。培训内解--%>
                    <%--<span class="txt"><img src="../images/img_02_02.jpg"/></span><br/><br/>--%>
                     <%--<br> 请点击附件下载打开。<br>--%>
                    <%--附件：<a href="javascript:">丽江古城管理有限责任公司关于报名租住公房审核结果公示 2013年第1期</a>--%>
                        <br> 请点击附件下载打开。<br>
                        附件：<a href="">
                        <c:forEach var="each" items="${contentList}">
                            <c:if test="${each.id==96}">
                                ${each.title}
                            </c:if>
                        </c:forEach>
                    </a>

                </div>
                <div class="Minute-paging">
                    <span>
                        <c:if test="${!page.firstPage}">
                            <a href="Lj-NewList-Minute?pageNo=1&pageSize=${page.pageSize}" type="button">上一篇</a>
                         </c:if>
                        <c:if test="${!page.lastPage}">
                            <a href="Lj-NewList-Minute?pageNo=${page.nextPage}&pageSize=${page.pageSize}" type="button" >下一篇</a>
                        </c:if>
                         <%--<a href="javascript:">上一篇</a>--%>
                      <%--<a href="javascript:">下一篇</a>--%>
                    </span></div>
                <!--=====================-->
                
             </div>
             <!--text end-->
              
              
            </div>
            <!--right end-->
            
         </div>
         <!--center end-->
      
         <!--footer begin-->
          <jsp:include page="include_front/common_footer.jsp"/>
         <!--footer end-->
      
      </div>
      <!--total-width end-->
   
   </div> 
   <%--<!--屏蔽右键,F12 begin--><script type="text/javascript" src="../js/Shielding-key.js"></script><!--屏蔽右键,F12 end-->--%>
</body>
</html>
