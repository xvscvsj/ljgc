package com.zh.ljgc.service;

import com.zh.ljgc.dao.BaseDao;
import com.zh.ljgc.entity.Title;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by DELL on 2016/11/7.
 */
public class BaseService<M> {
        @Autowired
        protected BaseDao<M> baseDao;
        public List<Title> findAll(){
          return   baseDao.findAll();
    }
}

