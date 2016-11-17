package com.zh.ljgc.entity;

/**
 * Created by Administrator on 2016/11/13 0013.
 */
public class Channel {
    private Integer id;
    private String name;
    private String description;
    private String logo;

    public Channel() {
    }

    public Channel(Integer id, String name, String description, String logo) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.logo = logo;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLogo() {
        return logo;
    }

    public void setLogo(String logo) {
        this.logo = logo;
    }
}
