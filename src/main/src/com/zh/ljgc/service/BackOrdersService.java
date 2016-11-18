package com.zh.ljgc.service;

import com.zh.ljgc.entity.AdminUser;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.Search;

import java.util.List;

/**
 * Created by DELL on 2016/11/15.
 */
public interface BackOrdersService {

    List<Orders> findOrders();

    void delOrder(String orderId);

    void modOrder(Orders orders);

    //关键字搜索
    List<Search> search(String keyword);

    //验证管理员登录信息
    AdminUser loginTest();
}

