<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--恋在丽江</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
<script type="text/javascript" src="../js/jquery/show.js"></script>
</head>

<body>
<%request.getAttribute("Love");%>
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
                 <c:forEach var="love" items="${Love}">
                     <c:if test="${love.id==103}">
                         <span> <img src="${love.channel.logo}"></span>
                         <div>${love.channel.description}</div>
                     </c:if>
                 </c:forEach></div>
                 <%--<span><img src="../images/icon_06_06.jpg"/></span><div>最纯真，最柔情的古城之恋</div></div>--%>
             <!--title end-->
             
             <!--love begin-->
             <c:forEach var="love" items="${Love}">
                 <c:if test="${love.id==107}">
             <div class="Lj-Love">
                <dl>
                    <dt><span onclick="show(1)"><img id="Show1"	 src=""/></span></dt>
                    <dd>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}${love.details}
                     <div id="ShowText1"> ${love.details}</div>
                    </dd>
                </dl>
                <dl>
                    <dt><span  onclick="show(2)"><img id="Show2" src=""/></span></dt>
                    <dd>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}${love.details}
                    <div  id="ShowText2" style="display:none">
                            ${love.details}
                    </div>
                    </dd>
                </dl>
                <dl>
                    <dt><span  onclick="show(3)"><img id="Show3" src=""/></span></dt>
                    <dd>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}<br/>
                       <div id="ShowText3">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}<br/>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}<br/>
                       </div>
                    </dd>
                </dl>
                <dl>
                    <dt><span  onclick="show(4)"><img id="Show4" src=""/></span></dt>
                    <dd>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}${love.details}
                   <div  id="ShowText4">
                           ${love.details}
                   </div>
                    </dd>
                </dl>
                <dl>
                    <dt><span  onclick="show(5)"><img id="Show5" src=""/></span></dt>
                    <dd>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${love.details}${love.details}
                    <div id="ShowText5">
                            ${love.details}
                    </div>
                    </dd>
                </dl>
             </div>
                 </c:if>
             </c:forEach>
             <!--love end-->

              
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
