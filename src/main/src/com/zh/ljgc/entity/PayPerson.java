package com.zh.ljgc.entity;

/**
 * Created by DELL on 2016/11/13.
 */
public class PayPerson {
    private int paypersonId; //缴纳人编号
    private String paypersonName;  //缴纳人姓名
    private String paypersonCardNo; //缴纳人证件号
    private Orders orders;

    public PayPerson() {
    }

    public PayPerson(int paypersonId, String paypersonName, String paypersonCardNo) {
        this.paypersonId = paypersonId;
        this.paypersonName = paypersonName;
        this.paypersonCardNo = paypersonCardNo;
    }

    public Orders getOrders() {
        return orders;
    }

    public void setOrders(Orders orders) {
        this.orders = orders;
    }

    public int getPaypersonId() {
        return paypersonId;
    }

    public void setPaypersonId(int paypersonId) {
        this.paypersonId = paypersonId;
    }

    public String getPaypersonName() {
        return paypersonName;
    }

    public void setPaypersonName(String paypersonName) {
        this.paypersonName = paypersonName;
    }

    public String getPaypersonCardNo() {
        return paypersonCardNo;
    }

    public void setPaypersonCardNo(String paypersonCardNo) {
        this.paypersonCardNo = paypersonCardNo;
    }
}
