<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>        
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0" />    
    <!--[if gt IE 8]>
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />        
    <![endif]-->                
    <title>Dynamic Tables - Aries Premium Admin Template</title>
    <link rel="icon" type="image/ico" href="favicon.ico"/>
    
    <link href="../../css/stylesheets.css" rel="stylesheet" type="text/css" />
    <!--[if lte IE 7]>
        <link href="../../css/ie.css" rel="stylesheet" type="text/css" />
        <script type='text/javascript' src='../../js/plugins/other/lte-ie7.js'></script>
    <![endif]-->      
    <script type='text/javascript' src='../../js/plugins/jquery/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='../../js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'></script>
    <script type='text/javascript' src='../../js/plugins/jquery/jquery-migrate-1.1.1.min.js'></script>
    <script type='text/javascript' src='../../js/plugins/jquery/globalize.js'></script>
    <script type='text/javascript' src='../../js/plugins/other/excanvas.js'></script>
    
    <script type='text/javascript' src='../../js/plugins/other/jquery.mousewheel.min.js'></script>
        
    <script type='text/javascript' src='../../js/plugins/bootstrap/bootstrap.min.js'></script>
    
    <script type='text/javascript' src='../../js/plugins/cookies/jquery.cookies.2.2.0.min.js'></script>
    
    <script type='text/javascript' src="../../js/plugins/uniform/jquery.uniform.min.js"></script>
    
    <script type='text/javascript' src='../../js/plugins/datatables/jquery.dataTables.min.js'></script>
    
    <script type='text/javascript' src='../../js/plugins/shbrush/XRegExp.js'></script>
    <script type='text/javascript' src='../../js/plugins/shbrush/shCore.js'></script>
    <script type='text/javascript' src='../../js/plugins/shbrush/shBrushXml.js'></script>
    <script type='text/javascript' src='../../js/plugins/shbrush/shBrushJScript.js'></script>
    <script type='text/javascript' src='../../js/plugins/shbrush/shBrushCss.js'></script>
    
    <script type='text/javascript' src='../../js/plugins.js'></script>
    <script type='text/javascript' src='../../js/charts.js'></script>
    <script type='text/javascript' src='../../js/actions.js'></script>
    
</head>
<body>    
    <div id="loader"><img src="../../img/loader.gif"/></div>
    <div class="wrapper">
        
        <div class="sidebar">
            
            <%--left--%>
            <jsp:include page="include_back/common_left.jsp"/>
            <%--left--%>
        </div>
        
        <div class="body">

            <ul class="navigation">

                <li>
                    <div class="user">
                        <img src="../../img/examples/users/dmitry_m.png" align="left"/>
                        <a href="#" class="name">
                            <span>小月</span>
                            <span class="sm">Administrator&nbsp;</span>
                        </a>
                    </div>
                </li>
                <li>
                    <a  href="back_login" type="button" class="btn btn-default" style="background-color: #5eb95e">&nbsp;登录</a>
                </li>
                <li>
                    <div class="buttons">
                        <div class="sbutton green navButton" >
                            <a href="#"><span class="ico-align-justify" ></span></a>
                        </div
                        >
                        <div class="sbutton blue">
                            <a href="#"><span class="ico-cogs" ></span></a>
                            <div class="popup" style="width: 200px">
                                <div class="arrow"></div>
                                <div class="row-fluid" >
                                    <div class="row-form">
                                        <div class="span4">账户管理:</div>
                                        <div class="span8"><input type="button" class="cNav" name="cNavButton" value="账户设置"/><br><input type="button" class="cNav" name="cNavButton" value="退出"/></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </li>
            </ul>
            
            
            <div class="content">
                
                <div class="page-header">
                    <div class="icon">
                        <span class="ico-layout-7"></span>
                    </div>
                    <h1>商家管理</h1>
                </div>

                <div class="row-fluid">
                    <div class="span12">
                        <div class="block">
                            <div class="head dblue">
                                <div class="icon"><span class="ico-layout-9"></span></div>
                                <h2>查看商铺</h2>
                                <ul class="buttons">
                                    <li><a href="#" onClick="source('table_sort_pagination'); return false;"><div class="icon"><span class="ico-info"></span></div></a></li>
                                </ul>                                                        
                            </div>                
                                <div class="data-fluid">
                                    <table class="table fpTable lcnp" cellpadding="0" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th><input type="checkbox" class="checkall"/></th>
                                                <th width="10%">商铺号</th>
                                                <th width="20%">出售商品</th>
                                                <th width="10%">单价</th>
                                                <th width="15%">电话</th>
                                                <th width="10%">地址</th>
                                                <th width="10%">优惠</th>
                                                <th width="80" class="TAC">操作</th>
                                            </tr>
                                        </thead>

                                        <tbody>
                                            <c:forEach var="business" items="${Business}">
                                                <c:forEach var="hotel" items="${Hotel}">
                                            <tr>
                                                <td><input type="checkbox" name="order[]" value="528"/></td>
                                                <%--取商铺号--%>
                                                <td><a href="#">${business.gid}</a></td>

                                                <%--如果一个订单，有多个人买票，取出数据样式排版还未解决--%>
                                                <td>
                                                ${business.gname}<br>
                                                </td>

                                                <td>

                                                ${hotel.sprice}<br>
                                               </td>

                                                <td>${business.gphone}</td>

                                                <%--如果为已支付，字体蓝色，否则字体红色--%>
                                                        <td><span class="label label-important">
                                                ${business.gaddress}

                                                    </span></td>


                                                <%--取出订单时间--%>
                                                <td>
                                                    ${hotel.sdiscount}<br>
                                               </td>
                                                <%--订单操作--%>
                                                <td>
                                                    <%--点击修改--%>
                                                    <a href="#" class="button green" onclick="show('${business.gid}')">
                                                        <div class="icon"><span class="ico-pencil"></span></div>
                                                    </a>
                                                     <%--点击删除订单--%>
                                                    <a href="del_order?gid=${business.gid}" class="button red" onclick="return confirm('确定将此订单删除?')">
                                                        <div class="icon"><span class="ico-remove"></span></div>
                                                    </a>                                              
                                                </td>
                                            </tr>
                                            </c:forEach>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    <%--当点击show()方法的时候修改订单信息--%>
                                    <div id="pic" style="border:1px;position: absolute;width: 500px;height: 270px; background:burlywood;visibility: hidden"></div>

                                </div>
                        </div>            


                    </div>
                </div>  
            </div>
            
        </div>
        
    </div>
    <div class="dialog" id="source" style="display: none;" title="Source"></div>      
</body>
</html>
