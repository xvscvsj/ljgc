package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Content;

import java.util.List;

/**
 * Created by Administrator on 2016/11/17 0017.
 */
public interface BackChannelDao {
    List<Content> findContent();
    void delContent(Integer id);
}
