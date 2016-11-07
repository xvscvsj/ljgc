package com.zh.ljgc.service;

import com.zh.ljgc.entity.Title;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by DELL on 2016/11/7.
 */
@Service
public class LjgcService extends BaseService<Title> {

    @Override
   // @Transactional
    public List<Title> findAll() {
        return super.findAll();
    }
}
