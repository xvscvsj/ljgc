package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;

import java.util.List;

/**
 * Created by DELL on 2016/11/13.
 */
public interface OrdersDao {
    String addOrders(Orders orders);

    List<Orders> onlineQuery(PayPerson payPerson);

    int payPersonId();

    void orderPayData(String orderId);

}

