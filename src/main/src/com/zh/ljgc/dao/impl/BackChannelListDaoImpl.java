package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BackChannelListDao;
import com.zh.ljgc.entity.Content;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by Administrator on 2016/11/18 0018.
 */
@Repository
public class BackChannelListDaoImpl implements BackChannelListDao{
  @Autowired
   private SessionFactory sessionFactory;
    @Override
    public List<Content> findList() {
        Session session=sessionFactory.openSession();
        List<Content> contentList=new ArrayList<Content>();
        Query query=session.createQuery("from Content");
        contentList=query.list();
        return contentList;
    }

    @Override
    public void delList(Integer id) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        Content content=new Content();
        content.setId(id);
        session.delete(content);
        session.getTransaction().commit();
    }
}
