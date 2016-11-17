package com.zh.ljgc.entity;

import javax.persistence.Entity;

/**
 * Created by Administrator on 2016/11/14 0014.
 */
@Entity
public class ShopFoodEntity {
    private Integer fid;
    private String fimg;
    private String foodname;
    private String fspeak;
    private String faddress;
    private String fphone;

    public ShopFoodEntity() {
    }

    public ShopFoodEntity(Integer fid, String fimg, String foodname, String fspeak, String faddress, String fphone) {
        this.fid = fid;
        this.fimg = fimg;
        this.foodname = foodname;
        this.fspeak = fspeak;
        this.faddress = faddress;
        this.fphone = fphone;
    }

    public Integer getFid() {
        return fid;
    }

    public void setFid(Integer fid) {
        this.fid = fid;
    }

    public String getFimg() {
        return fimg;
    }

    public void setFimg(String fimg) {
        this.fimg = fimg;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public String getFspeak() {
        return fspeak;
    }

    public void setFspeak(String fspeak) {
        this.fspeak = fspeak;
    }

    public String getFaddress() {
        return faddress;
    }

    public void setFaddress(String faddress) {
        this.faddress = faddress;
    }

    public String getFphone() {
        return fphone;
    }

    public void setFphone(String fphone) {
        this.fphone = fphone;
    }
}
