<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--视频</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
</head>

<body>
<%request.getAttribute("Video");%>
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
                 <c:forEach var="video" items="${Video}">
                     <c:if test="${video.id==108}">
                         <span> <img src="${video.channel.logo}"></span>
                         <div>${video.channel.description}</div>
                     </c:if>
                 </c:forEach></div>
                 <%--<span><img src="../images/icon_06_04.jpg"/></span><div>丽江古城最真实的景区动态信息</div></div>--%>
             <!--title end-->
             
             <!--Video begin-->
             
             <div class="Lj-video">
             
             <!--=======================-->

             <div class="video-area">
                 <c:forEach var="video" items="${Video}">
                     <c:if test="${video.id==108}">
                <span>${video.title}</span>
                <div><a href="javascript:"><img src="${video.titleImg}"/></a></div>
                     </c:if>
                 </c:forEach>
             </div>

             <!--=======================-->
             
             <!--=======================-->
             <div class="video-list">
               <div class="video-more"><span><a href="javascript:">查看更多</a><img src="../images/icon_04_01.jpg"/></span></div>

                 <div class="video-text">

                 <ul>

                    <li>
                        <c:forEach var="video" items="${Video}">
                        <c:if test="${video.id==109}">
                        <a href="javascript:"><img src="${video.titleImg}"/></a><span><a href="javascript:">${video.title}</a></span>
                        </c:if>
                        </c:forEach>
                    </li>
                    <li>
                        <c:forEach var="video" items="${Video}">
                        <c:if test="${video.id==110}">
                            <a href="javascript:"><img src="${video.titleImg}"/></a><span><a href="javascript:">${video.title}</a></span>
                        </c:if>
                        </c:forEach>
                    </li>

                 </ul>

               </div>

             </div>
             <!--=======================-->
               
             </div>
                
             <!--Video end-->
              
              
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
