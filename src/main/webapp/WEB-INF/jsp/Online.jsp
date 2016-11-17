<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>丽江古城--在线支付</title>
<link href="../../css/css.css" type="text/css" rel="stylesheet">
<script type="text/javascript" src="../../js/jquery/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="../../js/jquery/index_tab.js"></script>
<script type="text/javascript" src="../../js/jquery/left_roll.js"></script>
<script type="text/javascript" src="../../js/Page-loading.js"></script>
<script type="text/javascript" src="../../js/Bb-tile.js"></script>
<script type="text/javascript">
function changeAdd(){

	   var online = document.getElementById("online");
	   online.value++;
	   var num = $("#list dl").length+1;
	   var sf = $("#list dl").length+1;
       $("#list").append("<dl><dt><p>缴纳人姓名</p><input type='text' id='name"+num+"' class='online_check' name='paypersonName'/></dt><dd><p>证件号码</p><input id='certificate"+sf+"' type='text' class='online_check link_input' name='paypersonCardNo'/></dd></dl>");
}
function changeSub(){ 
  
     var online = document.getElementById("online");
	 if(online.value>1){
		 online.value--;
		 var div = document.getElementById("list");
		 div.removeChild(div.lastChild);
		 }
	   

}
function settlement(){
	  var num = $("#list dl").length;
	  var reg = /(^\d{15}$)|(^\d{18}$)|(^\d{17}(\d|X|x)$)/;
	  var sf = $("#list dl").length;
	  for(var i=1;i<=$("#list dl").length;i++){
		   if($("#name"+num).val()==""){
			     alert("缴纳人姓名不能为空!");
				 break;
			   }else if($("#certificate"+i).val()==""){
				   alert("身份证号不能为空!");
				   break;
				   }
//           else if(!reg.test($("#certificate"+i).value)){
//					     alert("身份证号输入不正确!");
//						 break;
//					   }
//           else{
//						   window.location.href = "http://www.baidu.com/";
//						   }

	  }
	}
</script>
</head>

<body>
   <!--background picture begin-->
   <div class="picture" id="picture"><img id="bgImg" src="../../images/home_top_bg.jpg" height="742"></div>
   <!--background picture end-->

   <div class="total" id="total">
   
      <!--total-width begin-->
      <div class="w1180">

          <%--网站上方_头部--%>
         <!--top begin-->
         <jsp:include page="include_front/common_head.jsp"/>
         <!--top end-->

         <!--center begin-->
         <div class="Lj-cen">
            <%--网站左边--%>
            <!--left begin-->
            <jsp:include page="include_front/common_left.jsp"/>
            <!--left end-->

            <!--right begin-->
            <div class="w786">
            
             
             <div class="online">
               <div class="online_title">
                   <form action="online_inquiry" method="post">
                     <p>订单查询</p>
                     <dl>
                       <dt>证件号码</dt>
                       <dd><input type="text" value="" class="online_input" name="paypersonCardNo"/></dd>
                     </dl>
                     <dl>
                       <dt>订单号</dt>
                       <dd><input type="text" value="" class="online_input" name="orderId"/></dd>
                     </dl>
                     <button type="submit"/><h2 style="color: red">查询</h2></button>
                   </form>
               </div>
               <div class="online_img"><img src="../../images/icon_08_13.jpg" width="653" height="385"/></div>
             </div>
            
            <div class="online_text">
                <form action="online_pay">
              <h3>世界文化遗产丽江古城维护费</h3>
              <span class="online_span">金 额：80.00  元/人次</span>
              <span class="online_span"><i>数 量：</i><a onclick="changeSub()" href="javascript:"><img src="../../images/icon_08_14.jpg"/></a>
              <input type="text" class="online_num" id="online" value="1" name="orderNum"/><a onclick="changeAdd()" href="javascript:"><img src="../../images/icon_08_15.jpg"/></a></span>
              
              <dl>
                 <dt><p>取票电话</p><input type="text" class="online_check" name="orderPhone"/></dt>
                 <dd><em>取票时请出示该电话及其中一位缴纳人证件原件</em></dd>
              </dl>
              <div id="list">
               </dl>
                <dl>
                    <dt><p>缴纳人姓名</p><input id="name1" type='text' class='online_check'name="paypersonName"/></dt>
                    <dd><p>证件号码</p><input id="certificate1" type='text' class='online_check link_input' name="paypersonCardNo"/></dd>
                </dl>
              </div>
              <div class="online_font">
              注：1、丽江古城维护票据为实名制票据，请准确填写，出票后不能修改。<br/>
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2、丽江古城维护费结算缴纳成功后，款项已经汇入省财政古维专户，不能办理退款退票。
              </div>
              <div class="online_btn"><a href="javascript:" onclick="settlement()"><input type="submit" value="去结算" style="font-size: 26px"></a></div>
                    <%--<div class="online_btn"><input type="submit" value="去结算"></div>--%>
            </form>
            </div>
              
              
            </div>
            <!--right end-->

         </div>
         <!--center end-->

              <%--网站底部--%>
         <!--footer begin-->
          <jsp:include page="include_front/common_footer.jsp"/>
         <!--footer end-->
      
      </div>
      <!--total-width end-->
   
   </div> 
   <%--<!--屏蔽右键,F12 begin--><script type="text/javascript" src="../../js/Shielding-key.js"></script><!--屏蔽右键,F12 end-->--%>
</body>
</html>
