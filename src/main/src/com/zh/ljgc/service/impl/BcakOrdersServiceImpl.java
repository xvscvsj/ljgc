package com.zh.ljgc.service.impl;

import com.zh.ljgc.dao.BackOrdersDao;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.service.BackOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

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
}
