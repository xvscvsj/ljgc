package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Orders;
import com.zh.ljgc.entity.PayPerson;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;
import java.util.Set;

/**
 * Created by DELL on 2016/11/15.
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("/spring.xml")
public class BackOrdersDaoTest {
    @Autowired
    private BackOrdersDao backOrdersDao;

    @Test
    public void test(){
       List<Orders> ordersList= backOrdersDao.findOrders();
        for (Orders each:ordersList) {
            System.out.println("电话"+each.getOrderPhone());
            Set<PayPerson> payPerson = each.getPayPersons();
            for (PayPerson s:payPerson){

            }
//            for (PayPerson payPerson:each.getPayPersons()) {
//                System.out.println("名字"+payPerson.getPaypersonName());
//            }
        }
    }



    @Test
    public void test1(){
        List<Orders> list=backOrdersDao.search("5");

        for (Orders each:list) {
            each.getOrderPhone();
        }

//       for (int i=0;i<list.size();i++){
//           System.out.println(list.get(i).toString());
//       }
    }
}
