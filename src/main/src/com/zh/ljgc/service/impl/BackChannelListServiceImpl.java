package com.zh.ljgc.service.impl;

import com.zh.ljgc.dao.BackChannelListDao;
import com.zh.ljgc.entity.Content;
import com.zh.ljgc.service.BackChannelListService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Administrator on 2016/11/18 0018.
 */
@Service
public class BackChannelListServiceImpl implements BackChannelListService{
   @Autowired
   private BackChannelListDao backChannelListDao;
    @Override
    public List<Content> findList() {
        return backChannelListDao.findList();
    }

    @Override
    public void delList(Integer id)
    {backChannelListDao.delList(id);
    }
}
