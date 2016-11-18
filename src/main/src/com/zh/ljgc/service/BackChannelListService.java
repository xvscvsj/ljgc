package com.zh.ljgc.service;

import com.zh.ljgc.entity.Content;

import java.util.List;

/**
 * Created by Administrator on 2016/11/18 0018.
 */
public interface BackChannelListService {
    List<Content> findList();

    void delList(Integer id);

}
