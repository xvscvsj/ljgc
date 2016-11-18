package com.zh.ljgc.entity;

import javax.persistence.Entity;

/**
 * Created by Administrator on 2016/11/15 0015.
 */
@Entity
public class Hotel {
    //酒店号
    private Integer sid;
    //房型
    private String sroom;
    //床型
    private String sbed;
    //早餐
    private String sbreakfast;
    //宽带
    private String swiff;
    //价格
    private String sprice;
    //优惠
    private String sdiscount;
    public Hotel() {
    }

    public Hotel(Integer sid, String sroom, String sbed, String sbreakfast, String swiff, String sprice, String sdiscount) {
        this.sid = sid;
        this.sroom = sroom;
        this.sbed = sbed;
        this.sbreakfast = sbreakfast;
        this.swiff = swiff;
        this.sprice = sprice;
        this.sdiscount = sdiscount;
    }



    public Integer getSid() {
        return sid;
    }

    public void setSid(Integer sid) {
        this.sid = sid;
    }

    public String getSroom() {
        return sroom;
    }

    public void setSroom(String sroom) {
        this.sroom = sroom;
    }

    public String getSbed() {
        return sbed;
    }

    public void setSbed(String sbed) {
        this.sbed = sbed;
    }

    public String getSbreakfast() {
        return sbreakfast;
    }

    public void setSbreakfast(String sbreakfast) {
        this.sbreakfast = sbreakfast;
    }

    public String getSwiff() {
        return swiff;
    }

    public void setSwiff(String swiff) {
        this.swiff = swiff;
    }

    public String getSprice() {
        return sprice;
    }

    public void setSprice(String sprice) {
        this.sprice = sprice;
    }

    public String getSdiscount() {
        return sdiscount;
    }

    public void setSdiscount(String sdiscount) {
        this.sdiscount = sdiscount;
    }

}
