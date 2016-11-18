package com.zh.ljgc.service;

import com.zh.ljgc.dao.BaseDao;
import com.zh.ljgc.dao.SecondDao;
import com.zh.ljgc.entity.Business;
import com.zh.ljgc.entity.Content;
import com.zh.ljgc.utils.page.Pagination;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by DELL on 2016/11/7.
 */
public class BaseService<M> {

    @Autowired
    protected BaseDao<M> baseDao;

    public List<Content> findAll(){
          return   baseDao.findAll();
    }
    public List<Content> query(){
            return baseDao.query();
        }

    public List<Content> findnew(){
        return baseDao.findnew();
    }

    public List<Content> find(){
        return baseDao.find();
    }

    public List<Content> findcity(){
        return baseDao.findcity();
    }

    public List<Content> findlove(){
        return baseDao.findlove();
    }

    public List<Content> findvideo(){
        return baseDao.findvideo();
    }

    public Pagination findct(Integer pageNo, Integer pageSize) {
        return baseDao.findct(pageNo,pageSize);
    }
}

