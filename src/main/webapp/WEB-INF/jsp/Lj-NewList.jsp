<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--新闻列表</title>
<link href="../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../js/Page-loading.js"></script>  
<script type="text/javascript" src="../js/Bb-tile.js"></script>
</head>

<body>
<%--<%request.getAttribute("Newlist");%>--%>
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
             <div class="Lj-news-title"><span><img src="../images/icon_06_02.jpg"/></span><div>丽江古城最真实的景区动态信息</div></div>
             <!--title end-->
             
             <!--text begin-->

             <div class="Lj-news-text"><div>
                 <c:forEach var="newlist" items="${Newlist}">
                <%--<ul>--%>
                  <%--<li>--%>
                      <dl>
                          <c:if test="${newlist.id==97}">
                         <dt><a href="javascript:">${newlist.title}</a></dt>
                         <dd>${newlist.details}</dd>
                          </c:if>
                      </dl>
                  <%--</li>--%>
                  <%--<li>--%>
                      <c:if test="${newlist.id==98}">
                      <span><a href="javascript:"><img src="${newlist.titleImg}"/></a></span>
                      </c:if>
                      <dl>
                          <c:if test="${newlist.id==98}">
                         <dt><a href="javascript:">${newlist.title}</a></dt>
                         <dd>${newlist.details}</dd>
                          </c:if>
                      </dl>
                  <%--</li>--%>
                    <%--<li>--%>
                        <dl>
                            <c:if test="${newlist.id==97}">
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </c:if>
                        </dl>
                    <%--</li>--%>
                    <%--<li>--%>
                        <dl>
                            <c:if test="${newlist.id==97}">
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </c:if>
                        </dl>
                    <%--</li>--%>

                    <%--<li>--%>
                        <c:if test="${newlist.id==98}">
                            <span><a href="javascript:"><img src="${newlist.titleImg}"/></a></span>
                        </c:if>
                     <dl>
                         <c:if test="${newlist.id==97}">
                             <dt><a href="javascript:">${newlist.title}</a></dt>
                             <dd>${newlist.details}</dd>
                         </c:if>
                     </dl>
                            <dl>
                                <c:if test="${newlist.id==98}">
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                                </c:if>
                            </dl>
                     <dl>
                         <c:if test="${newlist.id==97}">
                             <dt><a href="javascript:">${newlist.title}</a></dt>
                             <dd>${newlist.details}</dd>
                         </c:if>
                     </dl>
                    <%--</li>--%>


                    <%--<li>--%>
                        <dl>
                            <c:if test="${newlist.id==97}">
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </c:if>
                        </dl>
                    <%--</li>--%>
                    <%--<li>--%>
                        <c:if test="${newlist.id==98}">
                            <span><a href="javascript:"><img src="${newlist.titleImg}"/></a></span>
                            <dl>
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </dl>
                        </c:if>
                    <%--</li>--%>
                    <%--<li>--%>
                        <dl>
                            <c:if test="${newlist.id==97}">
                                <dt><a href="javascript:">${newlist.titleImg}</a></dt>
                                <dd>${newlist.details}</dd>
                            </c:if>
                        </dl>
                    <%--</li>--%>
                    <%--<li>--%>
                        <c:if test="${newlist.id==98}">
                            <span><a href="javascript:"><img src="${newlist.titleImg}"/></a></span>
                            <dl>
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </dl>
                        </c:if>
                    <%--</li>--%>
                    <%--<li>--%>
                        <dl>
                            <c:if test="${newlist.id==97}">
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </c:if>
                        </dl>
                    <%--</li>--%>
                    <%--<li>--%>
                        <c:if test="${newlist.id==98}">
                            <span><a href="javascript:"><img src="${newlist.titleImg}"/></a></span>
                            <dl>
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </dl>
                        </c:if>
                    <%--</li>--%>
                    <%--<li>--%>
                        <dl>
                            <c:if test="${newlist.id==97}">
                                <dt><a href="javascript:">${newlist.title}</a></dt>
                                <dd>${newlist.details}</dd>
                            </c:if>
                        </dl>
                    <%--</li>--%>
                <%--</ul>--%>
                 </c:forEach>
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
   <%--<!--屏蔽右键,F12 begin--><script type="text/javascript" src="../js/Shielding-key.js"></script><!--屏蔽右键,F12 end-->--%>
</body>
</html>
