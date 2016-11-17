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
    public String modOrder(String orderId,Model model){
//        System.out.println(orderId);
        List<Orders> ordersList=backOrdersService.findOrders();
        for (Orders each:ordersList) {
            if (each.getOrderId().equals(orderId)){

            }
        }

        return "back_orderModify";
    }


    @RequestMapping("/cs")
    public String cs(String orderStatus,String orderPhone,String id){
        System.out.println("Stat:"+orderStatus);
        System.out.println("phone:"+orderPhone);
        System.out.println("id:"+id);
        return "cs";
    }

}
