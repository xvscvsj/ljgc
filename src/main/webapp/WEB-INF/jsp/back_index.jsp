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
    <title>Ljgc-Backstage</title>
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
    
    <script type='text/javascript' src='../../js/plugins/jflot/jquery.flot.js'></script>
    <script type='text/javascript' src='../../js/plugins/jflot/jquery.flot.stack.js'></script>
    <script type='text/javascript' src='../../js/plugins/jflot/jquery.flot.pie.js'></script>
    <script type='text/javascript' src='../../js/plugins/jflot/jquery.flot.resize.js'></script>
    
    <script type='text/javascript' src='../../js/plugins/sparklines/jquery.sparkline.min.js'></script>
    
    <script type='text/javascript' src='../../js/plugins/mcustomscrollbar/jquery.mCustomScrollbar.min.js'></script>
    
    <script type='text/javascript' src="../../js/plugins/uniform/jquery.uniform.min.js"></script>
    
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
                            <span>小明</span>
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
                        <span class="ico-arrow-right"></span>
                    </div>
                    <h1>流量统计 </h1>
                </div>
                
                <div class="row-fluid">
                    <div class="span12">
                        <div class="widgets">
                            <div class="widget blue value">
                                <div class="left">60%</div>
                                <div class="right">
                                    $1,530 amount paid<br/>
                                    $2,102 in queue<br/>
                                    $11,100 total taxes
                                </div>
                                <div class="bottom">
                                    <a href="#">Invoices statistics</a>
                                </div>
                            </div>
                            <div class="widget green icon">
                                <div class="left">
                                    <div class="icon">
                                        <span class="ico-download"></span>
                                    </div>
                                </div>
                                <div class="right">
                                    <table cellpadding="0" cellspacing="0" width="100%">
                                        <tr>
                                            <td>HDD</td><td>4.5 / 250 GB</td>
                                        </tr>
                                        <tr>
                                            <td>MySQL</td><td>1.8 / 10 GB</td>
                                        </tr>
                                        <tr>
                                            <td>Databases</td><td>1 / 5</td> 
                                        </tr>
                                        <tr>
                                            <td>E-mails</td><td>5 / 15</td> 
                                        </tr>
                                        <tr>
                                            <td>Tickets</td><td>2</td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="bottom">
                                    <a href="#">Server information</a>
                                </div>                            
                            </div>
                            <div class="widget orange chart nmr">
                                <div class="left">                                    
                                    <span class="mChartBar" sparkWidth="90" sparkHeight="90" sparkType="bar" sparkBarColor="#FFFFFF" sparkBarWidth="10">10,9,8.5,8,9,8,7,7.5</span>
                                </div>
                                <div class="right">
                                    65% New<br/>
                                    35% Returning<br/>
                                    00:05:12 Average time on site
                                </div>
                                <div class="bottom">
                                    <a href="#">List visits</a>
                                </div>                            
                            </div>                        
                        </div>
                    </div>
                </div>
                
                <div class="row-fluid">
                    
                    <div class="span12">
                        
                        <div class="block">
                            <div class="head">
                                <div class="icon"><span class="ico-chart-4"></span></div>
                                <h2>访客统计</h2>
                                <ul class="buttons">
                                    <li><a href="#" class="ublock"><div class="icon"><span class="ico-undo"></span></div></a></li>
                                    <li><a href="#" class="cblock"><div class="icon"><span class="ico-sort"></span></div></a></li>
                                </ul>
                            </div>
                            <div class="data">
                                <div id="main_chart" style="height: 300px;"></div>                                
                            </div>       
                            <div class="row-fluid">
                                <div class="span4">
                                    <div class="stat">
                                        <span class="cdblue">2,350</span> PAGE<br/> VIEWS
                                    </div>
                                </div>
                                <div class="span4">
                                    <div class="stat">
                                        <span class="cblue">1,120</span> UNIQUE<br/> PAGE VIEWS
                                    </div>                                                                        
                                </div>
                                <div class="span4">
                                    <div class="stat">
                                        <span class="corange">720</span> SALES<br/> PER PERIOD
                                    </div>                                                
                                </div>               
                            </div>
                        </div>

                        <!--<div class="block">-->
                            <!---->
                        <!--</div>-->

                    </div>
                </div>
                
            </div>
            
        </div>

    </div>
    
    <div class="dialog" id="source" style="display: none;" title="Source"></div>

    <div style="background-color: #ebebeb;height: 50px" >
         <p> <div style="padding-left: 600px"><br>©2016 ljgc<a href="index"> 丽江古城首页</a></div>
    </div>
</body>
</html>
