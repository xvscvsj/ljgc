package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Channel;
import com.zh.ljgc.entity.Content;

import java.util.List;

/**
 * Created by Administrator on 2016/11/18 0018.
 */
public interface BackChannelListDao {
    List<Content> findList();

    void delList(Integer id);

//    void addList(Content content, Channel channel);
//
//    void updateList(Integer id);
}
