package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Part;
import com.zh.ljgc.entity.Title;

import java.util.List;

/**
 * Created by DELL on 2016/11/3.
 */
public interface BaseDao<M> {
      public List<Title> findAll();
}
