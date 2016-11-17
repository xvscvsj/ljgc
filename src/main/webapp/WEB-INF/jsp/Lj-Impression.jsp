<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--印象古城</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
<script type="text/javascript" src="../js/jquery/Lj-flash.js"></script>
</head>

<body>
<%request.getAttribute("City");%>
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
                 <c:forEach var="city" items="${City}">
                     <c:if test="${city.id==103}">
                         <span> <img src="${city.channel.logo}"></span>
                         <div>${city.channel.description}</div>
                     </c:if>
                 </c:forEach></div>
                 <%--<span><img src="../images/icon_06_03.jpg"/></span><div>丽江古城最真实的景区动态信息</div></div>--%>
             <!--title end-->
             
             <!--impression begin-->
             
             <div class="Lj-impression">


             <!--======================-->
               <div class="impression-img">
                   <div class="clickL"><img id="leftNav" src="../images/icon_03_01.png"/></div>
                   <div class="impression-con" id="Lj-flash">
                       <span id="Lj-img">
                           <c:forEach var="city" items="${City}">
                               <c:if test="${city.id>=103&&city.id<=106}">
                               <a href="javascript:"><img  src="${city.titleImg}"/></a>
                               </c:if>
                           </c:forEach>
                       </span>
                   </div>
                   <div class="clickR"><img id="rightNav" src="../images/icon_03_02.png"/></div>
               </div>
               <!--======================-->
               
               <!--======================-->
               <div class="Lj-take">
              <c:forEach var="city" items="${City}">
                  <c:if test="${city.id==103}">
                 <span>${city.title}</span>
                 <div>${city.details}</div>
                  </c:if>
              </c:forEach>
               </div>
               <!--======================-->

               <div class="Minute-paging"><span><a href="javascript:">上一篇</a><a href="javascript:">下一篇</a></span></div>
               
             </div>
                
             <!--impression end-->
              
              
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
