package com.zh.ljgc.entity;

/**
 * Created by Administrator on 2016/11/15 0015.
 */
public class Hotel {
    private Integer sid;
    private String sroom;
    private String sbed;
    private String sbreakfast;
    private String swiff;
    private String sprice;
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
