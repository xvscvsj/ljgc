package com.zh.ljgc.service;

import com.zh.ljgc.entity.Channel;
import com.zh.ljgc.entity.Content;

import java.util.List;

/**
 * Created by Administrator on 2016/11/18 0018.
 */
public interface BackChannelListService {
    //查询栏目
    List<Content> findList();
    //删除栏目
    void delList(Integer id);

//    void addList(Content content, Channel channel);

//    void updateList(Integer id);
}
