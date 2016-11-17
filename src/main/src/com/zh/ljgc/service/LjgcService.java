package com.zh.ljgc.service;

import com.zh.ljgc.entity.Content;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by DELL on 2016/11/7.
 */
@Service
public class LjgcService extends BaseService<Content> {

    @Override
    @Transactional
    public List<Content> findAll() {
        return super.findAll();
    }
    public List<Content> query(){
        return super.query();
    }
    public List<Content> findnew(){
        return super.findnew();
    }
    public List<Content> find(){
        return super.find();
    }
    public List<Content> findcity(){
        return super.findcity();
    }
    public List<Content> findlove(){
        return super.findlove();
    }
    public List<Content> findvideo(){
        return super.findvideo();
    }
}
