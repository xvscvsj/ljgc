package com.zh.ljgc.entity;

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 *  订单实体
 * Created by DELL on 2016/11/13.
 */
public class Orders {
    private String orderId;//订单号
    private String orderPhone;//取票人电话
    private int orderNum;//订单数量
    private double orderPrice;//订单单价
    private Date orderTime; //订单时间
    private String orderStstus; //订单状态
    private Date orderPayTime;  //付款时间
    private Set<PayPerson> payPersons=new HashSet<PayPerson>();  //一个订单有多个缴纳人信息

    public Orders() {
    }

    public Orders(String orderId, String orderPhone, int orderNum, double orderPrice, Date orderTime, String orderStstus, Date orderPayTime) {
        this.orderId = orderId;
        this.orderPhone = orderPhone;
        this.orderNum = orderNum;
        this.orderPrice = orderPrice;
        this.orderTime = orderTime;
        this.orderStstus = orderStstus;
        this.orderPayTime = orderPayTime;
    }

    public String getOrderId() {
        return orderId;
    }

    public void setOrderId(String orderId) {
        this.orderId = orderId;
    }

    public String getOrderPhone() {
        return orderPhone;
    }

    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone;
    }

    public int getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(int orderNum) {
        this.orderNum = orderNum;
    }

    public double getOrderPrice() {
        return orderPrice;
    }

    public void setOrderPrice(double orderPrice) {
        this.orderPrice = orderPrice;
    }

    public Date getOrderTime() {
        return orderTime;
    }

    public void setOrderTime(Date orderTime) {
        this.orderTime = orderTime;
    }

    public String getOrderStstus() {
        return orderStstus;
    }

    public void setOrderStstus(String orderStstus) {
        this.orderStstus = orderStstus;
    }

    public Date getOrderPayTime() {
        return orderPayTime;
    }

    public void setOrderPayTime(Date orderPayTime) {
        this.orderPayTime = orderPayTime;
    }

    public Set<PayPerson> getPayPersons() {
        return payPersons;
    }

    public void setPayPersons(Set<PayPerson> payPersons) {
        this.payPersons = payPersons;
    }
}
