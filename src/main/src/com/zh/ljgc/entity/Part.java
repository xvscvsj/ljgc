package com.zh.ljgc.entity;

/**
 * Created by DELL on 2016/11/7.
 */  //栏目
public class Part {
    private int columnId;
    private String columnName;

    public Part() {
    }

    public Part(String columnName, int columnId) {
        this.columnName = columnName;
        this.columnId = columnId;
    }

    public int getColumnId() {
        return columnId;
    }

    public void setColumnId(int columnId) {
        this.columnId = columnId;
    }

    public String getColumnName() {
        return columnName;
    }

    public void setColumnName(String columnName) {
        this.columnName = columnName;
    }
}
