package com.zh.ljgc.web;

import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.service.BackOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

/**
 * Created by DELL on 2016/11/15.
 */
@Controller
public class BackController {
@Autowired
  private BackOrdersService backOrdersService;

//    登录界面
    @RequestMapping("/back_login")
    public String backLogin(){
        return "back_login";
    }
//    后台首页
    @RequestMapping("/back_index")
    public String backIndex(){
        return "back_index";
    }
//    查看订单
    @RequestMapping("/back_order")
    public String backOrder(Model model){
        List<Orders> ordersList=backOrdersService.findOrders();
        model.addAttribute("ordersList",ordersList);
        return "back_order";
    }

//    删除订单
    @RequestMapping("/del_order")
    public String delOrder(String orderId,Model model){
        backOrdersService.delOrder(orderId);
        List<Orders> ordersList=backOrdersService.findOrders();
        model.addAttribute("ordersList",ordersList);
        return "back_order";

    }

//    编辑订单
    @RequestMapping("/mod_order")
    public String modOrder(Orders orders,Model model){
        System.out.println("or:"+orders.getOrderId());
        System.out.println("p:"+orders.getOrderPhone());
        System.out.println("Ststus:"+orders.getOrderStstus());
//        编辑后的订单信息传到dao,去修改数据库里的信息
        backOrdersService.modOrder(orders);
//        查询更新后的订单
        List<Orders> ordersList=backOrdersService.findOrders();
        model.addAttribute("ordersList",ordersList);
        return "back_order";
    }


    //关键字搜索
    @RequestMapping("/search")
    public String search(String keyword){
       List searchList=backOrdersService.search(keyword);
        System.out.println("keyword:"+keyword);
        return "back_keywordSearch";
    }



//    @RequestMapping("/cs")
//    public String cs(String orderStatus,String orderPhone,String oid){
//        System.out.println("Stat:"+orderStatus);
//        System.out.println("phone:"+orderPhone);
//        System.out.println("id:"+oid);
//        return "cs";
//    }
//接收back_addbus.jsp页面数据
    @RequestMapping("/back_addbus")
    public String getbus(){

      return "back_addbus";
    }

}
