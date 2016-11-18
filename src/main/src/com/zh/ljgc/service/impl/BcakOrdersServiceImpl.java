package com.zh.ljgc.service.impl;

import com.zh.ljgc.dao.BackOrdersDao;
import com.zh.ljgc.entity.AdminUser;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.Search;
import com.zh.ljgc.service.BackOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by DELL on 2016/11/15.
 */
@Service
public class BcakOrdersServiceImpl implements BackOrdersService {
    @Autowired
    private BackOrdersDao backOrdersDao;
    @Override
    public List<Orders> findOrders() {
        return backOrdersDao.findOrders();
    }

    @Override
    public void delOrder(String orderId) {
        backOrdersDao.delOrder(orderId);
    }

    @Override
    public void modOrder(Orders orders) {
        if (orders.getOrderStstus().equals("已支付")){
            orders.setOrderPayTime(new Date());
        }else if (orders.getOrderStstus().equals("未支付")){
            orders.setOrderPayTime(null);
        }else {
            System.out.println("订单状态出错!(订单状态只能为：已支付/未支付)");
        }
        backOrdersDao.modOrder(orders);
    }

    @Override
    public List<Search> search(String keyword) {

        return backOrdersDao.search(keyword);
    }

    @Override
    public AdminUser loginTest() {
        return backOrdersDao.loginTest();
    }
}
