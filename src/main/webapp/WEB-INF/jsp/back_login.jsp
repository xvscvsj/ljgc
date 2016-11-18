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
    <title>Login - Aries Premium Admin Template</title>
    <link rel="icon" type="image/ico" href="favicon.ico"/>
    
    <link href="../../css/stylesheets.css" rel="stylesheet" type="text/css" />
    <!--[if lt IE 10]>
        <link href="../../css/ie.css" rel="stylesheet" type="text/css" />
    <![endif]-->           
    <!--[if lte IE 7]>
        <script type='text/javascript' src='../../js/plugins/other/lte-ie7.js'></script>
    <![endif]-->    
    <script type='text/javascript' src='../../js/plugins/jquery/jquery-1.9.1.min.js'></script>
    <script type='text/javascript' src='../../js/plugins/jquery/jquery-ui-1.10.1.custom.min.js'></script>
    <script type='text/javascript' src='../../js/plugins/jquery/jquery-migrate-1.1.1.min.js'></script>
    <script type='text/javascript' src='../../js/plugins/jquery/globalize.js'></script>
    <script type='text/javascript' src='../../js/plugins/other/excanvas.js'></script>
    
    <script type='text/javascript' src='../../js/plugins/other/jquery.mousewheel.min.js'></script>
        
    <script type='text/javascript' src='../../js/plugins/bootstrap/bootstrap.min.js'></script>
    
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
       
    <div class="login">

        <div class="page-header">
            <div class="icon">
                <span class="ico-arrow-right"></span>
            </div>
            <h1>登录</h1>
        </div>        
        
        <div class="row-fluid">
            <form action="login" method="post">
                <div class="row-form">
                    <div class="span12">
                        <input type="text" name="username" placeholder="用户名"/>
                    </div>
                </div>
                <div class="row-form">
                    <div class="span12">
                        <input type="text" name="password" placeholder="密码"/>
                    </div>
                </div>
                <div class="row-form">
                    <div class="span12">
                        <input type="checkbox"/> 记住密码
                    </div>
                </div>
                <div class="row-form">
                    <div class="span12">
                        <button type="submit" class="btn">登录 <span class="icon-arrow-next icon-white"></span></button>
                    </div>
                </div>
            </form>
        </div>
    </div>
    
</body>
</html>
