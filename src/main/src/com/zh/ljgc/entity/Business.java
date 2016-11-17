package com.zh.ljgc.entity;

import javax.persistence.Entity;

/**
 * Created by Administrator on 2016/11/15 0015.
 */
@Entity
public class Business {
    private Integer gid;
    private String garea;
    private String gprice;
    private String gfacilities;
    private String gname;
    private String gmain;
    private String gaddress;
    private String gphone;

    public Business() {
    }

    public Business(Integer gid, String garea, String gprice, String gfacilities, String gname, String gmain, String gaddress, String gphone) {
        this.gid = gid;
        this.garea = garea;
        this.gprice = gprice;
        this.gfacilities = gfacilities;
        this.gname = gname;
        this.gmain = gmain;
        this.gaddress = gaddress;
        this.gphone = gphone;
    }

    public Integer getGid() {
        return gid;
    }

    public void setGid(Integer gid) {
        this.gid = gid;
    }

    public String getGarea() {
        return garea;
    }

    public void setGarea(String garea) {
        this.garea = garea;
    }

    public String getGprice() {
        return gprice;
    }

    public void setGprice(String gprice) {
        this.gprice = gprice;
    }

    public String getGfacilities() {
        return gfacilities;
    }

    public void setGfacilities(String gfacilities) {
        this.gfacilities = gfacilities;
    }

    public String getGname() {
        return gname;
    }

    public void setGname(String gname) {
        this.gname = gname;
    }

    public String getGmain() {
        return gmain;
    }

    public void setGmain(String gmain) {
        this.gmain = gmain;
    }

    public String getGaddress() {
        return gaddress;
    }

    public void setGaddress(String gaddress) {
        this.gaddress = gaddress;
    }

    public String getGphone() {
        return gphone;
    }

    public void setGphone(String gphone) {
        this.gphone = gphone;
    }
}
