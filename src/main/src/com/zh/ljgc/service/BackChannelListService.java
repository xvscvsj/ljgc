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
     //添加栏目
    void addList(Content content, Channel channel);
    //修改栏目
//    void updateList(Integer id);
}
