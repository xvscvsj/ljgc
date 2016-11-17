<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--文化期刊</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
<script type="text/javascript" src="../js/change-tab.js"></script>
</head>

<body>
<%request.getAttribute("Pdata");%>
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
                 <c:forEach var="pdata" items="${Pdata}">
                     <c:if test="${pdata.id==99}">
                        <span> <img src="${pdata.channel.logo}"></span>
                         <div>${pdata.channel.description}</div>
                     </c:if>
                 </c:forEach></div>
                 <%--<span><img src="../images/icon_06_05.jpg"/></span><div>丽江文化研究会期刊</div></div>--%>
             <!--title end-->
             
             <!--text begin-->
             <div class="Lj-Cultural">
             
                
                <!--=====================-->
                 <c:forEach var="pdata" items="${Pdata}">
                     <c:if test="${pdata.id==99}">


                <div class="Cultural-Text" id="Cultural1" style="display:block">
                  <div class="Text1"><span><img src="../images/img_06_01.jpg"/></span><div>${pdata.title}&nbsp;&nbsp;&nbsp;&nbsp;${pdata.description}</div></div>
                  <div class="Text2">
                  <a href="javascript:">跨境民族基督教信仰与口头传统的互动与冲突 ——以云南傈僳族为考察个案/杨杰宏</a><br/><br/>
                  <a href="javascript:">纳西族口语谱研究/余崇先</a><br/><br/>
                  <a href="javascript:">中国土司地图集研究之思考 ——以丽江木氏土司为例/杨林军</a><br/><br/>
                  <a href="javascript:">解读《坡芽歌书》里的爱情密码与纳西民歌中的殉情文化/达坡玛吉</a><br/><br/>
                  <a href="javascript:">东巴教新旧崇拜观念变革史况/木丽春</a><br/><br/>
                  <a href="javascript:">旅游经济背景下东巴工艺品的境遇及思考/和卫芳</a><br/><br/>
                  <a href="javascript:">茶马古道与丽江古城/王德炯</a><br/><br/>
                  <a href="javascript:">《白狼王歌》初探/姚璐</a>
                  </div>
                </div>
                <!--=====================-->
                     </c:if>
                 </c:forEach>
                <!--=====================-->
                <div class="Cultural-Text" id="Cultural2">
                  <div class="Text1"><span><img src="../images/img_06_01.jpg"/></span><div>丽江文化&nbsp;&nbsp;&nbsp;&nbsp;第二期</div></div>
                  <div class="Text2">
                  <a href="javascript:">2跨境民族基督教信仰与口头传统的互动与冲突 ——以云南傈僳族为考察个案/杨杰宏</a><br/><br/>
                  <a href="javascript:">纳西族口语谱研究/余崇先</a><br/><br/>
                  <a href="javascript:">中国土司地图集研究之思考 ——以丽江木氏土司为例/杨林军</a><br/><br/>
                  <a href="javascript:">解读《坡芽歌书》里的爱情密码与纳西民歌中的殉情文化/达坡玛吉</a><br/><br/>
                  <a href="javascript:">东巴教新旧崇拜观念变革史况/木丽春</a><br/><br/>
                  <a href="javascript:">旅游经济背景下东巴工艺品的境遇及思考/和卫芳</a><br/><br/>
                  <a href="javascript:">茶马古道与丽江古城/王德炯</a><br/><br/>
                  <a href="javascript:">《白狼王歌》初探/姚璐</a>
                  </div>
                </div>
                <!--=====================-->
                
                <!--=====================-->
                <div class="Cultural-Text" id="Cultural3">
                  <div class="Text1"><span><img src="../images/img_06_01.jpg"/></span><div>丽江文化&nbsp;&nbsp;&nbsp;&nbsp;第三期</div></div>
                  <div class="Text2">
                  <a href="javascript:">3跨境民族基督教信仰与口头传统的互动与冲突 ——以云南傈僳族为考察个案/杨杰宏</a><br/><br/>
                  <a href="javascript:">纳西族口语谱研究/余崇先</a><br/><br/>
                  <a href="javascript:">中国土司地图集研究之思考 ——以丽江木氏土司为例/杨林军</a><br/><br/>
                  <a href="javascript:">解读《坡芽歌书》里的爱情密码与纳西民歌中的殉情文化/达坡玛吉</a><br/><br/>
                  <a href="javascript:">东巴教新旧崇拜观念变革史况/木丽春</a><br/><br/>
                  <a href="javascript:">旅游经济背景下东巴工艺品的境遇及思考/和卫芳</a><br/><br/>
                  <a href="javascript:">茶马古道与丽江古城/王德炯</a><br/><br/>
                  <a href="javascript:">《白狼王歌》初探/姚璐</a>
                  </div>
                </div>
                <!--=====================-->
               
                <!--=====================-->
                <div class="Cultural-Text" id="Cultural4">
                  <div class="Text1"><span><img src="../images/img_06_01.jpg"/></span><div>丽江文化&nbsp;&nbsp;&nbsp;&nbsp;第四期</div></div>
                  <div class="Text2">
                  <a href="javascript:">4跨境民族基督教信仰与口头传统的互动与冲突 ——以云南傈僳族为考察个案/杨杰宏</a><br/><br/>
                  <a href="javascript:">纳西族口语谱研究/余崇先</a><br/><br/>
                  <a href="javascript:">中国土司地图集研究之思考 ——以丽江木氏土司为例/杨林军</a><br/><br/>
                  <a href="javascript:">解读《坡芽歌书》里的爱情密码与纳西民歌中的殉情文化/达坡玛吉</a><br/><br/>
                  <a href="javascript:">东巴教新旧崇拜观念变革史况/木丽春</a><br/><br/>
                  <a href="javascript:">旅游经济背景下东巴工艺品的境遇及思考/和卫芳</a><br/><br/>
                  <a href="javascript:">茶马古道与丽江古城/王德炯</a><br/><br/>
                  <a href="javascript:">《白狼王歌》初探/姚璐</a>
                  </div>
                </div>
                <!--=====================-->
                
                <!--=====================-->
                <div class="Cultural-li">
                  
                   <ul>
                      <li onclick="Cultural(1)"><div id="Tural1" class="Tural"><img src="../images/img_06_02.jpg"/></div><span><a href="javascript:">丽江文化第一期</a></span></li>
                      <li onclick="Cultural(2)"><div id="Tural2"><img src="../images/img_06_03.jpg"/></div><span><a href="javascript:">丽江文化第二期</a></span></li>
                      <li onclick="Cultural(3)"><div id="Tural3"><img src="../images/img_06_04.jpg"/></div><span><a href="javascript:">丽江文化第三期</a></span></li>
                      <li onclick="Cultural(4)"><div id="Tural4"><img src="../images/img_06_05.jpg"/></div><span><a href="javascript:">丽江文化第四期</a></span></li>
                   </ul>
                  
                </div>
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
