package com.zh.ljgc.service.impl;

import com.zh.ljgc.dao.OrdersDao;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;
import com.zh.ljgc.service.OrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by DELL on 2016/11/13.
 */
@Service
public class OrdersServiceImpl implements OrdersService {
    @Autowired
    private OrdersDao ordersDao;
    @Override
    public String addOrders(Orders orders) {
        return ordersDao.addOrders(orders);
    }

    @Override
    public List<Orders> onlineQuery(PayPerson payPerson) {
        return ordersDao.onlineQuery(payPerson);

    }

    @Override
    public int payPersonId() {
        return ordersDao.payPersonId();
    }

    @Override
    public void orderPayData(String orderId) {
        ordersDao.orderPayData(orderId);
    }
}
