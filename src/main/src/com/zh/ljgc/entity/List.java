package com.zh.ljgc.entity;

/**
 * Created by Administrator on 2016/11/15 0015.
 */
public class List {
    private Integer id;
    private String title;
    private String source;//来源
    private String time;
    private String details;//详情
    private String titleImg;

    public List() {
    }

    public List(Integer id, String title, String source, String time, String details, String titleImg) {
        this.id = id;
        this.title = title;
        this.source = source;
        this.time = time;
        this.details = details;
        this.titleImg = titleImg;
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

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
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
}
