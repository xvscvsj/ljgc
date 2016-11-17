package com.zh.ljgc.service;

import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;

import java.util.List;

/**
 *  订单Service
 * Created by DELL on 2016/11/13.
 */
public interface OrdersService {
    //添加订单
    String addOrders(Orders orders);
     //查询订单
    List<Orders> onlineQuery(PayPerson payPerson);
    //查询到缴纳人Id
    int payPersonId();
//   插入支付时间
    void orderPayData(String orderId);
}
