package com.zh.ljgc.service;

import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;

import java.util.List;

/**
 *  订单Service
 * Created by DELL on 2016/11/13.
 */
public interface OrdersService {
    String addOrders(Orders orders);

    List<Orders> onlineQuery(PayPerson payPerson);

    int payPersonId();

    void orderPayData(String orderId);
}
