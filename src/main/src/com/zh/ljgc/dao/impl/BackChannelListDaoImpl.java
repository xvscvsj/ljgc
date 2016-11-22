package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BackChannelListDao;
import com.zh.ljgc.entity.Channel;
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
    //查看后台栏目数据
    public List<Content> findList() {
        Session session=sessionFactory.openSession();
        List<Content> contentList=new ArrayList<Content>();
        Query query=session.createQuery("from Content");
        contentList=query.list();
        return contentList;
    }
    //删除栏目数据
    @Override
    public void delList(Integer id) {
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        Channel channel=new Channel();
        channel.setId(id);
        Content content=new Content();
        content.setId(id);
        content.setChannel(channel);
        session.delete(content);
        session.getTransaction().commit();
    }
     //添加栏目
    @Override
    public void addList(Content content, Channel channel) {
       Session session=sessionFactory.openSession();
        session.beginTransaction();
        session.merge(channel);
        session.merge(content);
        session.getTransaction().commit();
    }
     //修改栏目
//    @Override
//    public void updateList(Integer id) {
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        Content content=new Content();
//        content.setId(id);
//        session.update(content);
//        session.getTransaction().commit();
//    }
}
