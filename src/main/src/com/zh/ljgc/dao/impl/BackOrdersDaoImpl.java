package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BackOrdersDao;
import com.zh.ljgc.entity.*;
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

//    修改订单信息
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
    public List<Search> search(String keyword) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
         List<Search> searchList=new ArrayList<Search>();
//        Query query=session.createQuery("select distinct o from PayPerson p,Orders o where o.orderId like :id or p.paypersonName like :name")
//        订单
          Query query=session.createQuery("from Orders o where o.orderId like :id")
                .setParameter("id","%"+keyword+"%");

          List<Orders> list=query.list();
          for (Orders each:list) {
              for (PayPerson person:each.getPayPersons()) {
                  searchList.add(new Search(each.getOrderId(),person.getPaypersonName(),"订单",each.getOrderPhone()));
              }

          }

//        栏目
        Query query1=session.createQuery("from Content c where c.title like :title")
                .setParameter("title","%"+keyword+"%");

            List<Content> conList=query1.list();
            for (Content conEach:conList) {
                searchList.add(new Search(String.valueOf(conEach.getId()),conEach.getTitle(),"栏目",conEach.getPhone()));

            }

//        商家
           //食物
        Query query2=session.createQuery("from ShopFoodEntity s where s.foodname like :foodname")
                .setParameter("foodname","%"+keyword+"%");

        List<ShopFoodEntity> foodList=query2.list();
        for (ShopFoodEntity foodEach:foodList) {
            searchList.add(new Search(String.valueOf(foodEach.getFid()),foodEach.getFoodname(),"商家-食物",foodEach.getFphone()));
        }

        //酒店
        Query query3=session.createQuery("from Hotel h where h.sroom like :sroom")
                .setParameter("sroom","%"+keyword+"%");

        List<Hotel> hotelList=query3.list();
        for (Hotel hotelEach:hotelList) {
            searchList.add(new Search(String.valueOf(hotelEach.getSid()),hotelEach.getSroom(),"商家-酒店","电话已欠费"));
        }

        session.getTransaction().commit();
        return searchList;
    }

    @Override
    public AdminUser loginTest() {
        Session session=sessionFactory.openSession();
        AdminUser user=session.get(AdminUser.class,1);
        return user;
    }
}
