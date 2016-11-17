package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import java.util.*;

/**
 * Created by DELL on 2016/11/13.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@Transactional
@ContextConfiguration("/spring.xml")
public class OrdersDaoTest {
    @Autowired
    private OrdersDao ordersDao;
    @Test
    public void tset(){
//        先准备两个缴纳人
        Set<PayPerson> payPersons=new HashSet<PayPerson>();
        PayPerson payPerson=new PayPerson();
        payPerson.setPaypersonName("qq");
        payPerson.setPaypersonCardNo("12345678941");
        PayPerson payPerson2=new PayPerson();
        payPerson2.setPaypersonName("ww");
        payPerson2.setPaypersonCardNo("74345678941");
        payPersons.add(payPerson);
        payPersons.add(payPerson2);
//        然后给orders赋值
        Orders orders=new Orders();
        orders.setOrderId("3");
        orders.setOrderNum(2);
        orders.setOrderPhone("110");
        orders.setPayPersons(payPersons);
//        最后在将orders赋值给ordersDao里面的addOrders（）方法。
         String ordersId=ordersDao.addOrders(orders);
        Assert.assertNotNull(ordersId);

    }

    @Test
    public void test1(){
        PayPerson payPerson=new PayPerson();
        payPerson.setPaypersonCardNo("51132219940313624x");

        Orders orders=new Orders();
        orders.setOrderId("Mon Nov 14 09:59:19 CST 2016ljgc");
        payPerson.setOrders(orders);
        ordersDao.onlineQuery(payPerson);
        List<Orders> ordersList=ordersDao.onlineQuery(payPerson);
        for (Orders each:ordersList) {
            System.out.println("订单号:"+each.getOrderPhone());
            for (PayPerson each1:each.getPayPersons()) {
                System.out.println("名字"+each1.getPaypersonName());
                System.out.println("证件号码"+each1.getPaypersonCardNo());
            }
        }
    }

    @Test
    public void test2(){
        String orderId="2016ljgc33";
        ordersDao.orderPayData(orderId);
    }
}
