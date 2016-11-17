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
    <script type="text/javascript">
        function show(orderId){
            var x=event.clientX;
            var y=event.clientY;
            document.getElementById("pic").style.top=y+50;
            document.getElementById("pic").style.left=x;
            document.getElementById("pic").style.visibility="visible";
            var formDiv="<div class='container'style='padding-left: 90px'> <div class='row clearfix'> <div class='col-md-6 column'><h2>修改订单信息</h2><form action='mod_order' method='post'> <div class='form-group'><label for='inputEmail3' class='col-sm-3 control-label'>订单状态：</label> <div class='col-sm-9'> <input type='text' class='form-control' id='inputEmail3' name='orderStstus' style='width: 20%'/> </div> <label for='inputEmail3' class='col-sm-3 control-label'>订单手机号：</label> <div class='col-sm-9'> <input type='text' class='form-control' id='inputEmail3' name='orderPhone' style='width: 20%' /><input type='hidden' id='oid' name='orderId' style='width: 20%'> </div> </div> <p> <div class='form-group'> <div class='col-sm-offset-2 col-sm-10' style='margin-left: 200px'> <input type='submit' class='btn btn-default' onclick='hide()' value='保存'> </input> &nbsp; <button type='button' class='btn btn-default' onclick='hide()'>取消</button></div></div></form>";
            //把表单插入到id为pic
            document.getElementById("pic").innerHTML=formDiv;
//            给input的id是oid的赋值orderId
            document.getElementById('oid').value = orderId;
        }
        //当点击hide方法是隐藏表单
        function hide(){
            document.getElementById("pic").style.visibility="hidden";
        }
    </script>
    
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
                    <h1>订单管理</h1>
                </div>

                <div class="row-fluid">
                    <div class="span12">
                        <div class="block">
                            <div class="head dblue">
                                <div class="icon"><span class="ico-layout-9"></span></div>
                                <h2>查看订单</h2>
                                <ul class="buttons">
                                    <li><a href="#" onClick="source('table_sort_pagination'); return false;"><div class="icon"><span class="ico-info"></span></div></a></li>
                                </ul>                                                        
                            </div>                
                                <div class="data-fluid">
                                    <table class="table fpTable lcnp" cellpadding="0" cellspacing="0" width="100%">
                                        <thead>
                                            <tr>
                                                <th><input type="checkbox" class="checkall"/></th>
                                                <th width="10%">订单号</th>
                                                <th>购票人</th>
                                                <th width="20%">证件号</th>
                                                <th width="15%">购票人电话</th>
                                                <th width="10%">状态</th>
                                                <th width="20%">订单时间</th>
                                                <th width="80" class="TAC">操作</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach var="order" items="${ordersList}">
                                            <tr>
                                                <td><input type="checkbox" name="order[]" value="528"/></td>
                                                <%--取出订单号--%>
                                                <td><a href="#">${order.orderId}</a></td>

                                                <%--如果一个订单，有多个人买票，取出数据样式排版还未解决--%>
                                                <td><c:forEach var="each" items="${order.payPersons}">
                                                ${each.paypersonName}<br>
                                                </c:forEach></td>

                                                <td> <c:forEach var="each" items="${order.payPersons}">
                                                ${each.paypersonCardNo}<br>
                                                </c:forEach></td>

                                                <td>${order.orderPhone}</td>

                                                <%--如果为已支付，字体蓝色，否则字体红色--%>
                                                <c:choose>
                                                    <c:when test="${order.orderStstus=='已支付'}">
                                                        <td><span class="label label-info">${order.orderStstus}</span></td>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <td><span class="label label-important">${order.orderStstus}</span></td>
                                                    </c:otherwise>
                                                </c:choose>
                                                <%--取出订单时间--%>
                                                <td>${order.orderTime}</td>
                                                <%--订单操作--%>
                                                <td>
                                                    <%--点击修改--%>
                                                    <a href="#" class="button green">
                                                        <div class="icon"><span class="ico-pencil"  onclick="show('${order.orderId}')"></span></div>
                                                    </a>
                                                     <%--点击删除订单--%>
                                                    <a href="del_order?orderId=${order.orderId}" class="button red" onclick="return confirm('确定将此订单删除?')">
                                                        <div class="icon"><span class="ico-remove"></span></div>
                                                    </a>                                              
                                                </td>
                                            </tr>
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
