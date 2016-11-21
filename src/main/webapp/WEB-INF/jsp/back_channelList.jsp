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
    <%--<script type="text/javascript">--%>
        <%--function show(id){--%>
            <%--var x=event.clientX;--%>
            <%--var y=event.clientY;--%>
            <%--document.getElementById("pic").style.top=y+50;--%>
            <%--document.getElementById("pic").style.left=x;--%>
            <%--document.getElementById("pic").style.visibility="visible";--%>
            <%--var formDiv="<div class='container'style='padding-left: 90px'> <div class='row clearfix'> <div class='col-md-6 column'><h2>修改栏目信息</h2><form action='back_channelList' method='post'> <div class='form-group'><label for='inputEmail3' class='col-sm-3 control-label'>栏目名：</label> <div class='col-sm-9'> <input type='text' class='form-control' id='inputEmail3' name='orderStstus' style='width: 20%'/> </div> <label for='inputEmail3' class='col-sm-3 control-label'>栏目标题：</label> <div class='col-sm-9'> <input type='text' class='form-control' id='inputEmail3' name='orderPhone' style='width: 20%' /><input type='hidden' id='oid' name='orderId' style='width: 20%'> </div> </div> <p> <div class='form-group'> <div class='col-sm-offset-2 col-sm-10' style='margin-left: 200px'> <input type='submit' class='btn btn-default' onclick='hide()' value='保存'> </input> &nbsp; <button type='button' class='btn btn-default' onclick='hide()'>取消</button></div></div></form>";--%>

            <%--document.getElementById("pic").innerHTML=formDiv;--%>
<%--//--%>
            <%--document.getElementById('id').value = id;--%>
        <%--}--%>
        <%--function hide(){--%>
            <%--document.getElementById("pic").style.visibility="hidden";--%>
        <%--}--%>
    <%--</script>--%>
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
                <h1>栏目管理</h1>
            </div>

            <div class="row-fluid">
                <div class="span12">
                    <div class="block">
                        <div class="head dblue">
                            <div class="icon"><span class="ico-layout-9"></span></div>
                            <h2>查看栏目</h2>
                            <ul class="buttons">
                                <li><a href="#" onClick="source('table_sort_pagination'); return false;"><div class="icon"><span class="ico-info"></span></div></a></li>
                            </ul>
                        </div>
                        <div class="data-fluid">
                            <table class="table fpTable lcnp" cellpadding="0" cellspacing="0" width="100%">
                                <thead>
                                <tr>
                                    <th><input type="checkbox" class="checkall"/></th>
                                    <th width="25%">栏目编号</th>
                                    <th width="25%">栏目名字</th>
                                    <th width="35%">栏目标题</th>
                                    <th width="15%" class="TAC">操作</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach var="contentList" items="${contentList}">
                                    <tr>
                                        <td><input type="checkbox" name="order[]" value="528"/></td>
                                             <td>${contentList.id}</td>
                                             <td>${contentList.channel.name}</td>
                                              <td>${contentList.title}</td>
                                        <td>
                                            <%--&lt;%&ndash;//修改栏目&ndash;%&gt;--%>
                                            <%--<a href="#" class="button green">--%>
                                                <%--<div class="icon"><span class="ico-pencil"  onclick="show('${contentList.id}')"></span></div>--%>
                                            <%--</a>--%>
                                            <%--删除栏目--%>
                                            <a href="del_channelList?id=${contentList.id}" class="button red" onclick="return confirm('确定将栏目删除?')">
                                                <div class="icon"><span class="ico-remove"></span></div>
                                            </a>
                                        </td>
                                    </tr>
                                </c:forEach>

                                </tbody>
                            </table>
                            <%--<div id="pic" style="border:1px;position: absolute;width: 500px;height: 270px; background:burlywood;visibility: hidden"></div>--%>

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
