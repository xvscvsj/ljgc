package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BackOrdersDao;
import com.zh.ljgc.entity.Orders;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by DELL on 2016/11/15.
 */
@Repository
public class BackOrdersDaoImpl implements BackOrdersDao {
    @Autowired
    private SessionFactory sessionFactory;
    @Override
    public List<Orders> findOrders() {
        Session session=sessionFactory.openSession();
        List<Orders> ordersList=new ArrayList<Orders>();
//        “select distinct o”hql如果写上就去除重复
        Query query=session.createQuery("select distinct o from Orders o left  join fetch o.payPersons ");
        ordersList=query.list();
        return ordersList;
    }

    @Override
    public void delOrder(String orderId) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        Orders orders=new Orders();
        orders.setOrderId(orderId);
        session.delete(orders);
        session.getTransaction().commit();
    }
}
