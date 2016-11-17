package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BackOrdersDao;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;
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

    @Override
    public void modOrder(Orders orders) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        session.createQuery("update Orders o set o.orderPhone=:phone,o.orderStstus=:status,o.orderPayTime=:payTime where o.orderId=:id")
                .setParameter("phone",orders.getOrderPhone())
                .setParameter("status",orders.getOrderStstus())
                .setParameter("payTime",orders.getOrderPayTime())
                .setParameter("id",orders.getOrderId()).executeUpdate();
        session.getTransaction().commit();

    }

    @Override
    public List search(String keyword) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();

        Query query=session.createQuery("from PayPerson p,Orders o left  join fetch o.payPersons  where o.orderId like :id or p.paypersonName like :name")
                .setParameter("id","%"+keyword+"%")
                .setParameter("name","%"+keyword+"%");
        List list=query.list();
        session.getTransaction().commit();
        return list;
    }
}
