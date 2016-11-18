package com.zh.ljgc.service;

import com.zh.ljgc.entity.AdminUser;
import com.zh.ljgc.entity.Orders;

import java.util.List;

/**
 * Created by DELL on 2016/11/15.
 */
public interface BackOrdersService {

    List<Orders> findOrders();

    void delOrder(String orderId);

    void modOrder(Orders orders);

    //关键字搜索
    List search(String keyword);

    AdminUser loginTest();
}

