package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Content;

import java.util.List;

/**
 * Created by DELL on 2016/11/3.
 */
public interface BaseDao<M> {
      public List<Content> findAll();
      public List<Content> query();
      public List<Content> findnew();
      public List<Content> find();
      public List<Content> findcity();
      public List<Content> findlove();
      public List<Content> findvideo();
}
