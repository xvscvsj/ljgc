package com.zh.ljgc.web;

import com.zh.ljgc.entity.Content;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;
import com.zh.ljgc.service.LjgcService;
import com.zh.ljgc.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.*;

/**
 * Created by DELL on 2016/11/7.
 */
@Controller
public class OrdersController {
    @Autowired
    private OrdersService ordersService;
    @Autowired
    private LjgcService ljgcService;

    //添加订单
    @RequestMapping("/online_pay")
    public String online_pay(Orders orders,PayPerson payPerson,Model model){
        //添加payPerson表的信息
        Set<PayPerson> payPersons=new HashSet<PayPerson>();
        //得到表单里面所有的缴纳人
        String names=payPerson.getPaypersonName();
        String cardNos=payPerson.getPaypersonCardNo();
        //把多个缴纳人的信息安装“，”拆分。
         String[] name=names.split(",");
         String[] cardNo=cardNos.split(",");
        for (int j=0;j<name.length;j++){
            PayPerson  payPerson1=new PayPerson();
            payPerson1.setPaypersonName(name[j]);
            payPerson1.setPaypersonCardNo(cardNo[j]);
            //循环添加多个对象的缴纳人信息
            payPersons.add(payPerson1);
        }
        //添加orders表的信息
        Calendar c = Calendar.getInstance();
        int personId=ordersService.payPersonId();
        orders.setOrderId(c.get(Calendar.YEAR)+"ljgc"+(++personId));
        orders.setOrderTime(new Date());
        orders.setOrderPrice(80);
        orders.setOrderStstus("未支付");
        orders.setPayPersons(payPersons);

        if (!orders.getOrderPhone().equals(null)){
            //把订单添加到数据库的orders 和payperson表中，加入相应信息到表里面，并且返回受影响行数，做判断，是否继续
            String ordersId=ordersService.addOrders(orders);
            if (!ordersId.equals(null)){
                //传一个订单号到支付页面去付指定订单的款
                model.addAttribute("orderId",orders.getOrderId());


                return "Online_pay";
            }
            else if (ordersId.equals(null)){
                //如果没有返回订单号，就调回Online.jsp
                return "Online";
            }else {
                return "error";
            }
        }else {
            return "Online";
        }
    }

    //进入购票首页
    @RequestMapping("/online")
    public String online(Model model){
        //封装头部，左侧，尾部数据
        List<Content> contentList=ljgcService.findAll();
        model.addAttribute("contentList",contentList);
        return "Online";
    }

    //查询订单
    @RequestMapping("/online_inquiry")
    public String onlineQuery(PayPerson payPerson, Orders orders, Model model){
        payPerson.setOrders(orders);
        List<Orders> ordersList=ordersService.onlineQuery(payPerson);
        List<Content> contentList=ljgcService.findAll();
        model.addAttribute("contentList",contentList);
        model.addAttribute("OrdersList",ordersList);

        //跳转到订单查询界面
        return "Online_inquiry";
    }

    //支付订单
    @RequestMapping("/payment")
    public String payment(String orderId){
        ordersService.orderPayData(orderId);
        return "cs";
    }


}