package com.zh.ljgc.entity;

import java.util.Map;
import java.util.Set;

/**
 * Created by DELL on 2016/11/7.
 */
public class Title {
    private int id;
    private String titleName;
    private String img;
    private String video;
    private Part part;

    public Title() {
    }

    public Title(int id, String titleName, String img, String video) {
        this.id = id;
        this.titleName = titleName;
        this.img = img;
        this.video = video;
    }

    public String getVideo() {
        return video;
    }

    public void setVideo(String video) {
        this.video = video;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitleName() {
        return titleName;
    }

    public void setTitleName(String titleName) {
        this.titleName = titleName;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public Part getPart() {
        return part;
    }

    public void setPart(Part part) {
        this.part = part;
    }
}
