package com.zh.ljgc.dao.impl;

import com.zh.ljgc.dao.BaseDao;
import com.zh.ljgc.entity.Part;
import com.zh.ljgc.entity.Title;
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
public class LjgcDaoImpl implements BaseDao<Title> {
    @Autowired
    private SessionFactory sessionFactory ;
    @Override
    public List<Title> findAll() {
        Session session = sessionFactory.openSession();
       // session.beginTransaction();
        Query query=session.createQuery("from Title");
        List<Title> titleList=query.list();
        //session.beginTransaction().commit();
        return titleList;
    }

}
