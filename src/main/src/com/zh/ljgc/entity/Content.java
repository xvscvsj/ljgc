package com.zh.ljgc.entity;

/**
 * Created by Administrator on 2016/11/13 0013.
 */
public class Content {
    private Integer id;
    private String title;
    private String description;
    private String details;//详情
    private String titleImg;
    private String address;
    private String phone;
    private Channel channel;

    public Channel getChannel() {
        return channel;
    }

    public void setChannel(Channel channel) {
        this.channel = channel;
    }

    public Content() {
    }

    public Content(Integer id, String title, String description, String details, String titleImg, String address, String phone) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.details = details;
        this.titleImg = titleImg;
        this.address = address;
        this.phone = phone;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getDetails() {
        return details;
    }

    public void setDetails(String details) {
        this.details = details;
    }

    public String getTitleImg() {
        return titleImg;
    }

    public void setTitleImg(String titleImg) {
        this.titleImg = titleImg;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

}
