<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--住宿</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
<script type="text/javascript" src="../js/room-flash.js"></script>
<script>

   function stayBlock(){
	     if($("#stayNone").css("display")== "none"){
			   $("#stayNone").slideDown(800);
			   document.getElementById("StayIMG").src="../images/icon_07_08.jpg";
			 }else{
				$("#stayNone").slideUp(800); 
				document.getElementById("StayIMG").src="../images/icon_07_07.jpg";
				 }
	   }
</script>
</head>

<body>
<%request.getAttribute("Hotel");%>
<%request.getAttribute("Business");%>
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
             <div class="Lj-news-title"><span><img src="../images/icon_06_08.jpg"/></span><div>小桥流水，入住纳西客栈，寻找古城印象</div></div>
             <!--title end-->
             
             <!--text begin-->
             <div class="Lj-stay-two">
             
              <!--选项 begin-->
              <div class="Lj-option">
                 <dl class="potion-style">
                    <dt>区域：</dt>
                     <c:forEach var="business" items="${Business}">
                    <dd>
                        <c:if test="${business.gid==1}">
                        <a href="javascript:">${business.garea}</a>
                        </c:if>
                        <c:if test="${business.gid==2}">
                            <a href="javascript:">${business.garea}</a>
                        </c:if>
                        <c:if test="${business.gid==3}">
                            <a href="javascript:">${business.garea}</a>
                        </c:if>
                    </dd>
                     </c:forEach>
                 </dl>
                 <dl class="potion-style">
                    <dt>价格：</dt>
                     <c:forEach var="business" items="${Business}">
                    <dd>
                        <c:if test="${business.gid==4}">
                            <a href="javascript:">${business.gprice}</a>
                        </c:if>
                        <c:if test="${business.gid==5}">
                            <a href="javascript:">${business.gprice}</a>
                        </c:if>
                        <c:if test="${business.gid==6}">
                        <a href="javascript:">${business.gprice}</a>
                        </c:if>
                        <c:if test="${business.gid==7}">
                            <a href="javascript:">${business.gprice}</a>
                        </c:if>
                        <c:if test="${business.gid==8}">
                            <a href="javascript:">${business.gprice}</a>
                        </c:if>
                         </dd>
                     </c:forEach>
                 </dl>
                 <dl class="potion-style">
                    <dt>设施：</dt>
                     <c:forEach var="business" items="${Business}">
                    <dd>
                        <c:if test="${business.gid==9}">
                            <a href="javascript:">${business.gfacilities}</a>
                        </c:if>
                        <c:if test="${business.gid==10}">
                            <a href="javascript:">${business.gfacilities}</a>
                        </c:if>
                        <c:if test="${business.gid==11}">
                            <a href="javascript:">${business.gfacilities}</a>
                        </c:if>
                        <c:if test="${business.gid==12}">
                            <a href="javascript:">${business.gfacilities}</a>
                        </c:if>
                        <c:if test="${business.gid==13}">
                            <a href="javascript:">${business.gfacilities}</a>
                        </c:if>
                        <c:if test="${business.gid==14}">
                            <a href="javascript:">${business.gfacilities}</a>
                        </c:if>
                         </dd>
                     </c:forEach>
                 </dl>
                 <dl class="potion-style condition">
                    <dt><span class="potion-term">筛选条件</span><i class="potin-f">></i></dt>
                    <dd><span class="potion-d"><p>大研古城</p><a href="javascript:">×</a></span></dd>
                 </dl>
              </div>
              <!--选项 end-->

              <!--potion-list begin-->
                 <c:forEach var="business" items="${Business}">
                     <c:if test="${business.gid>=15}">
              <div class="potion-list">
                 <div class="potion-Text">

                   <div class="potion-img">
                       <!--显示大图 begin-->
                       <div class="Bar-big"><a href="javascript:"><img id="bigImg" class="pic-img" width="176" height="127" src="../images/img_01_18.jpg"/></a></div>
                       <!--显示大图 end-->

                       <!--Bar-circle begin-->
                       <div class="Bar-circle">
                          <a class="clickL" href="javaScript:Scroll('Direction',1)"><img id="oBtn_Left" src="../images/icon_07_03.jpg"/></a>
                           <div id="smallImg" class="picarea">
                              <div class="imgbox" id="smallSpace">
                                 <a href="javascript:"><img src="../images/img_01_16.jpg" onclick="changeBigImg(this)"/></a>
                                 <a href="javascript:"><img src="../images/img_01_17.jpg" onclick="changeBigImg(this)"/></a>
                                 <a href="javascript:"><img src="../images/img_01_18.jpg" onclick="changeBigImg(this)"/></a>
                                 <a href="javascript:"><img src="../images/img_01_19.jpg" onclick="changeBigImg(this)"/></a>
                                 <a href="javascript:"><img src="../images/img_01_20.jpg" onclick="changeBigImg(this)"/></a>
                                 <a href="javascript:"><img src="../images/img_01_21.jpg" onclick="changeBigImg(this)"/></a>
                                 <a href="javascript:"><img src="../images/img_01_22.jpg" onclick="changeBigImg(this)"/></a>
                              </div>
                           </div>
                          <a class="clickR" href="javaScript:Scroll('Direction',-1)"><img id="oBtn_Right" src="../images/icon_07_02.jpg"/></a>
                       </div>
                       <!--Bar-circle end-->
                    </div>

                    <!--详情 begin-->
                     <div class="stay-Text">

                             <h1 class="Bar-h1">

                                 <a href="javascript:">${business.gname}</a>
                             </h1>
                                 <span class="Bar-Txt">${business.gmain}</span>
                                 <i class="Bar-Text-i">地址：${business.gaddress}</i>
                                 <i class="Bar-Text-i">电话：${business.gphone}</i>

                     </div>
                    <!--详情 end-->

                    <!--价钱 begin-->
                    <div class="stayPrize">
                       <div class="stay-place">
                        <i class="staySign">￥</i>
                        <span class="stayNum">880</span>
                        <i class="stayRise">起</i>
                        </div>
                    </div>
                    <!--价钱 end-->
                 </div>
                  <c:forEach var="hotel" items="${Hotel}">
                 <div class="stayList">
                 <span class="stay-top">
                   <table width="750" cellpadding="0" cellspacing="0" border="0" class="stay-table">
                      <tr>
                        <td width="155" height="22">房       型</td>
                        <td width="95">床&nbsp;形</td>
                        <td width="95">早&nbsp;餐</td>
                        <td width="95">宽&nbsp;带</td>
                        <td width="100">房&nbsp;价</td>
                        <td>优惠</td>
                      </tr>
                   </table>
                 </span>
                    <ul>
                      <li>
                       <table width="750" cellpadding="0" cellspacing="0" border="0" class="stay-li">
                          <tr>
                            <td width="155" height="30">${hotel.sroom}</td>
                            <td width="95">${hotel.sbed}</td>
                            <td width="95">${hotel.sbreakfast}</td>
                            <td width="95">${hotel.swiff}</td>
                            <td width="100" class="font">${hotel.sprice} </td>
                            <td>${hotel.sdiscount}</td>
                          </tr>
                       </table>
                      </li>

                      <!--隐藏 begin-->
                      <div class="stayNone" id="stayNone">
                       <li>
                               <table width="750" cellpadding="0" cellspacing="0" border="0" class="stay-li">
                                   <tr>
                                       <td width="155" height="30">${hotel.sroom}</td>
                                       <td width="95">${hotel.sbed}</td>
                                       <td width="95">${hotel.sbreakfast}</td>
                                       <td width="95">${hotel.swiff}</td>
                                       <td width="100" class="font">${hotel.sprice} </td>
                                       <td>${hotel.sdiscount}</td>
                                   </tr>
                               </table>
                      </li>
                      </div>
                      <!--隐藏 end-->

                    </ul>
                    <div class="stay-develop"><a href="javascript:stayBlock()"><p>展开全部房型</p><i><img id="StayIMG" src="../images/icon_07_07.jpg"/></i></a></div>
                 </div>
                  </c:forEach>
              </div>
                 </c:if>
                 </c:forEach>
              <!--potion-list end-->


                <div class="Lj-news-page">共6条记录 1/1页<a href="javascript:">首页</a><a href="javascript:">上一页</a><a href="javascript:">下一页</a><a href="javascript:">尾页</a>第<select class="select"><option>1</option><option>2</option></select>页</div>
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
   <!--屏蔽右键,F12 begin<script type="text/javascript" src="../js/Shielding-key.js"></script>--><!--屏蔽右键,F12 end-->
</body>
</html>
