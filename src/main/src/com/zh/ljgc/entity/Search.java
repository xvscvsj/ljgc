package com.zh.ljgc.entity;

/**
 * Created by DELL on 2016/11/18.
 */
public class Search {
    private String numberId;//编号
    private String keyName;//关键字全称
    private String type;//关键字类型
    private String contactNum;//联系电话


    public Search() {
    }

    public Search(String numberId, String keyName, String type, String contactNum) {
        this.numberId = numberId;
        this.keyName = keyName;
        this.type = type;
        this.contactNum = contactNum;
    }

    public String getNumberId() {
        return numberId;
    }

    public void setNumberId(String numberId) {
        this.numberId = numberId;
    }

    public String getKeyName() {
        return keyName;
    }

    public void setKeyName(String keyName) {
        this.keyName = keyName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContactNum() {
        return contactNum;
    }

    public void setContactNum(String contactNum) {
        this.contactNum = contactNum;
    }
}
