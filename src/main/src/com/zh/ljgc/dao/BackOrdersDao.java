package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Orders;

import java.util.List;

/**
 * Created by DELL on 2016/11/15.
 */
public interface BackOrdersDao {
    List<Orders> findOrders();

    void delOrder(String orderId);

    void modOrder(Orders orders);

    List search(String keyword);
}
