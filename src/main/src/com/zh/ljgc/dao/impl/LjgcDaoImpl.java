package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BaseDao;
import com.zh.ljgc.entity.Business;
import com.zh.ljgc.entity.Content;
import com.zh.ljgc.utils.page.Pagination;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by DELL on 2016/11/7.
 */
@Repository
public class LjgcDaoImpl implements BaseDao<Content> {
    @Autowired
    private SessionFactory sessionFactory ;
    @Override
    public List<Content> findAll() {
        Session session = sessionFactory.openSession();
       // session.beginTransaction();
        Query query=session.createQuery("from Content");
        List<Content> contentList=query.list();
        //session.beginTransaction().commit();
        return contentList;
    }
    public List<Content> query(){
        Session session=sessionFactory.openSession();

        Query query=session.createQuery("from Content");
        List<Content> contents=query.list();
        return contents;
    }
    //古城新闻数据
    public List<Content> findnew(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
//        session.beginTransaction();
        Query query =session.createQuery("from Content");
        List<Content> newlists=query.list();
//        session.getTransaction().commit();
        return newlists;
    }
    //期刊页面数据
    public List<Content> find(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
//        session.beginTransaction();
        Query query =session.createQuery("from Content");
        List<Content> periodicalList=query.list();
//        session.getTransaction().commit();
        return periodicalList;
    }
    //古城
    public List<Content> findcity(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
//        session.beginTransaction();
        Query query =session.createQuery("from Content");
        List<Content> cityList=query.list();
//        session.getTransaction().commit();
        return cityList;
    }
    //恋在古城数据
    public List<Content> findlove(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
//        session.beginTransaction();
        Query query =session.createQuery("from Content");
        List<Content> loveList=query.list();
//        session.getTransaction().commit();
        return loveList;
    }
    //视频页面数据
    public List<Content> findvideo(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
//        session.beginTransaction();
        Query query =session.createQuery("from Content");
        List<Content> videoList=query.list();
//        session.getTransaction().commit();
        return videoList;
    }


    @Override
    public Pagination findct(Integer pageNo, Integer pageSize) {
        Session session=sessionFactory.openSession();
        Long cont=(Long)(session.createQuery("select count(c.id) from Content c").getSingleResult());
        Pagination result =new Pagination(pageNo,pageSize,cont.intValue());
        List list=session.createQuery("from Content")
                .setFirstResult(result.getFirstResult())
                .setMaxResults(result.getPageSize())
                .list();
        result.setList(list);
        return result;
    }
}
