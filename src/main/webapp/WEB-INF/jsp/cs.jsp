<%--
  Created by IntelliJ IDEA.
  User: DELL
  Date: 2016/11/13
  Time: 18:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<link href="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
<script src="http://cdn.static.runoob.com/libs/jquery/2.1.1/jquery.min.js"></script>
<script src="http://cdn.static.runoob.com/libs/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript" src="../../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript">

</script>
<html>
<head>
    <title>Title</title>
</head>
<script type="text/javascript">
    function show(){
        var x=event.clientX;
        var y=event.clientY;
        document.getElementById("pic").style.top=y+50;
        document.getElementById("pic").style.left=x;
        document.getElementById("pic").style.visibility="visible";
//        var formDiv="<form action='#'>";
//        formDiv+="订票人电话号码: <input type='text' name='user' /><br>";
//        formDiv+="订票状态:    <input type='text' name='pass' /><br><br>";
//        formDiv+="<input type='submit' value='提交' onclick='hide()' /></form>";
        var formDiv="<div class='container'> <div class='row clearfix'> <div class='col-md-6 column'><h2>修改订单信息</h2><form class='form-horizontal' role='form'> <div class='form-group'> <label for='inputEmail3' class='col-sm-3 control-label'>订单手机号：</label> <div class='col-sm-10'> <input type='email' class='form-control' id='inputEmail3' /> </div> </div> <div class='form-group'> <label for='inputPassword3' class='col-sm-3 control-label'>订单状态：</label> <div class='col-sm-10'> <input type='text' class='form-control' id='inputPassword3' /> </div> </div> <div class='form-group'> <div class='col-sm-offset-2 col-sm-10'> <button type='submit' class='btn btn-default' onclick='hide()'>保存</button> &nbsp; <button type='button' class='btn btn-default' onclick='hide()'>取消</button></div></div></form>";
//        formDiv+="订票人电话号码: <input type='text' name='user' /><br>";
//        formDiv+="订票状态:    <input type='text' name='pass' /><br><br>";
//        formDiv+="<input type='submit' value='提交' onclick='hide()' /></form>";

        document.getElementById("pic").innerHTML=formDiv;
    }

    function hide(){
        document.getElementById("pic").style.visibility="hidden";
    }
</script>
</head>

<body>
<input type="button" value="登陆" onclick="show()">
<div id="pic" style="border:1px;position: absolute;width: 500px;height: 270px; background:#ebebeb;visibility: hidden"></div>


<div class="container">
    <div class="row clearfix">
        <div class="col-md-6 column">
            <form class="form-horizontal" role="form">
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
                    <div class="col-sm-6">
                        <input type="email" class="form-control" id="inputEmail3" />
                    </div>
                </div>
                <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-6">
                        <input type="password" class="form-control" id="inputPassword3" />
                    </div>
                </div>
                <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                        <button type="submit" class="btn btn-default">Sign in</button>

                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

</body>
<%--<body>--%>



<%--<script>--%>
    <%--Ext.get("btn_edit").on("click", function () {--%>

        <%--var form = new Ext.FormPanel({--%>
            <%--//labelAlign: 'top',--%>
            <%--bodyStyle: 'padding:5px 5px 0',--%>
            <%--layout: 'form',--%>
            <%--items: [--%>
                <%--{--%>
                    <%--xtype: 'textfield',--%>
                    <%--name: 'title',--%>
                    <%--anchor: '100%'--%>
                <%--}, {--%>
                    <%--xtype: 'htmleditor',--%>
                    <%--border: true,--%>
                    <%--id: 'context',--%>
                    <%--plugins: [--%>
                        <%--Ext.create('Ext.zc.form.HtmlEditorImage')--%>
                    <%--],--%>
                    <%--height: 400,--%>
                    <%--anchor: '100%'--%>
                <%--}--%>
            <%--],--%>
            <%--buttonAlign: 'center',--%>
            <%--buttons: [--%>
                <%--{--%>
                    <%--text: '保存',--%>
                    <%--icon: '../../../Images/extjs/disk.png',--%>
                    <%--handler: function () {--%>
                        <%--var text = form.getForm().findField('context').getValue();--%>
                        <%--alert(text);--%>
                    <%--}--%>
                <%--}, {--%>
                    <%--text: '关闭',--%>
                    <%--icon: '../../../Images/extjs/cross.png',--%>
                    <%--handler: function () {--%>
                        <%--win.close(this);--%>
                    <%--}--%>
                <%--}--%>
            <%--]--%>
        <%--});--%>
        <%--var win = Ext.create("Ext.window.Window", {--%>
            <%--title: "编辑",       //标题--%>
            <%--draggable: false,--%>
            <%--icon: '../../../Images/extjs/pencil.png',--%>
            <%--height: 600,                          //高度--%>
            <%--width: 800,                           //宽度--%>
            <%--layout: "fit",                        //窗口布局类型--%>
            <%--modal: true, //是否模态窗口，默认为false--%>
            <%--resizable: false,--%>
            <%--items: [form]--%>
        <%--});--%>
        <%--win.show();--%>
    <%--});--%>

<%--</script>--%>






<%--&lt;%&ndash;<button onclick="del()">删除</button>&ndash;%&gt;--%>

<%--&lt;%&ndash;<a href="xxoo.asp?id=<%=rs("id")%>" onclick="return confirm('确定将此记录删除?')">删除</a>&ndash;%&gt;--%>
<%--&lt;%&ndash;<a href="del_order?id=3" onclick="return confirm('确定将此记录删除?')">删除</a>&ndash;%&gt;--%>













<%--支付交易成功！--%>
<%--&lt;%&ndash;<c:forEach var="ordersList" items="${OrdersList}">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<tr align="center">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:forEach var="each" items="${ordersList}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;${each.paypersonName}&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>

<%--&lt;%&ndash;<c:forEach var="each" items="${OrdersList}">&ndash;%&gt;--%>
    <%--&lt;%&ndash;${each.orderPhone}<br>&ndash;%&gt;--%>
    <%--&lt;%&ndash;<tr align="center">&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td width="95">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:forEach var="p" items="${each.payPersons}">&ndash;%&gt;--%>
                <%--&lt;%&ndash;${p.paypersonName}&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td width="135">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<c:forEach var="p" items="${each.payPersons}">&ndash;%&gt;--%>
                <%--&lt;%&ndash;${p.paypersonCardNo}&ndash;%&gt;--%>
            <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td width="118">&ndash;%&gt;--%>
            <%--&lt;%&ndash;${each.orderPrice}元/张</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td width="105">${each.orderTime}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td>${each.orderPayTime}</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>



<%--&lt;%&ndash;<c:forEach var="order" items="${ordersList}">&ndash;%&gt;--%>
    <%--&lt;%&ndash;<tr>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><input type="checkbox" name="order[]" value="528"/></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><a href="#">${order.orderId}</a></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<c:forEach var="each" items="${order.payPersons}">&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>${each.paypersonName}</td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<td>${each.paypersonCardNo}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td>${order.orderPhone}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td><span class="label label-important">${order.orderStstus}</span></td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td>${order.orderTime}</td>&ndash;%&gt;--%>
        <%--&lt;%&ndash;<td>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="button green">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="icon"><span class="ico-pencil"></span></div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
            <%--&lt;%&ndash;<a href="#" class="button red">&ndash;%&gt;--%>
                <%--&lt;%&ndash;<div class="icon"><span class="ico-remove"></span></div>&ndash;%&gt;--%>
            <%--&lt;%&ndash;</a>&ndash;%&gt;--%>
        <%--&lt;%&ndash;</td>&ndash;%&gt;--%>
    <%--&lt;%&ndash;</tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;</c:forEach>&ndash;%&gt;--%>
<%--</body>--%>
</html>
