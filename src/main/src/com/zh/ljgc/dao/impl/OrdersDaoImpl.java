package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.OrdersDao;
import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.Date;
import java.util.List;

/**
 * Created by DELL on 2016/11/13.
 */
@Repository
public class OrdersDaoImpl implements OrdersDao {
    @Autowired
    private SessionFactory sessionFactory;

    //添加订单到数据库
    @Override
    public String addOrders(Orders orders) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        //从数据库拿到一个订单生成的id，如果不为空则提交成功
        String ordersId=(String) session.save(orders);
        session.getTransaction().commit();
        return ordersId;
    }

    //根据订单号和身份证号码取数据
    @Override
    public List<Orders> onlineQuery(PayPerson payPerson) {
        Session session=sessionFactory.openSession();
//        Query query= session.createQuery("select distinct o from Orders o left  join fetch o.payPersons");//取所有
        //左外连接加条件（两张表都设置相应条件查询）
        Query query= session.createQuery("from PayPerson p,Orders o left  join fetch o.payPersons where o.orderId=:orderId or p.paypersonCardNo=:CardNo")
                .setParameter("orderId",payPerson.getOrders().getOrderId()).setParameter("CardNo",payPerson.getPaypersonCardNo());
        List<Orders> ordersList=query.list();
        return ordersList;
    }

    //取出personId
    @Override
    public int payPersonId() {
        Session session=sessionFactory.openSession();
        Integer personId=0;//默认等于0
        personId= (Integer) session.createQuery("select max(p.paypersonId) from PayPerson p ").getSingleResult();
        return personId;
    }

    //更新数据库订单状态和支付时间
    @Override
    public void orderPayData(String orderId) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        session.createQuery("update Orders set orderStstus=:status,orderPayTime=:payTime where orderId=:id")
               .setParameter("status","已支付").setParameter("payTime",new Date()).setParameter("id",orderId).executeUpdate();
        session.getTransaction().commit();
    }
}
