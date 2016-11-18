package com.zh.ljgc.dao;


import com.zh.ljgc.entity.*;
import com.zh.ljgc.utils.page.Pagination;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * Created by Administrator on 2016/11/14 0014.
 */
@Repository
public class SecondDao<m>{

    @Autowired
    private SessionFactory sessionFactory;

//    //美食页面数据
//    public List<ShopFoodEntity> queryfood(){
//        //开启事物
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        //查询美食数据
//        Query query =session.createQuery("from ShopFoodEntity");
//        //将数据放到list集合中
//        List<ShopFoodEntity> foodEntityList=query.list();
//        session.getTransaction().commit();
//        return foodEntityList;
//    }
//
    //美食页面分页
    public Pagination foodlist(Integer pageNo,Integer pageSize){
        //开启事物
        Session session=sessionFactory.openSession();
        Long cont=(Long)(session.createQuery("select count(s.fid) from ShopFoodEntity s").getSingleResult());
        Pagination result =new Pagination(pageNo,pageSize,cont.intValue());
        List list=session.createQuery("from ShopFoodEntity")
                .setFirstResult(result.getFirstResult())
                .setMaxResults(result.getPageSize())
                .list();
        result.setList(list);
        return result;
    }
//    //期刊页面数据
//    public List<Periodical> find(){
//        //查询期刊数据 //开启事物
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        Query query =session.createQuery("from Periodical p left join fetch p.periodicalMain");
//        List<Periodical> periodicalList=query.list();
//        session.getTransaction().commit();
//        return periodicalList;
//    }
    //古城印象数据
//    public List<City> findcity(){
//        //查询期刊数据 //开启事物
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        Query query =session.createQuery("from City");
//        List<City> cityList=query.list();
//        session.getTransaction().commit();
//        return cityList;
//    }
//    //恋在古城数据
//    public List<Love> findlove(){
//        //查询期刊数据 //开启事物
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        Query query =session.createQuery("from Love");
//        List<Love> loveList=query.list();
//        session.getTransaction().commit();
//        return loveList;
//    }
//    //古城新闻数据
//    public List<Newlist> findnew(){
//        //查询期刊数据 //开启事物
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        Query query =session.createQuery("from Newlist");
//        List<Newlist> newlists=query.list();
//        session.getTransaction().commit();
//        return newlists;
//    }
//    //视频页面数据
//    public List<Video> findvideo(){
//        //查询期刊数据 //开启事物
//        Session session=sessionFactory.openSession();
//        session.beginTransaction();
//        Query query =session.createQuery("from Video");
//        List<Video> videoList=query.list();
//        session.getTransaction().commit();
//        return videoList;
//    }
    //旅馆页面数据
    public List<Business> findbus(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        Query query =session.createQuery("from Business");
        List<Business> businesses=query.list();
        session.getTransaction().commit();
        return businesses;
    }
    public List<Hotel> findhotel(){
        //查询期刊数据 //开启事物
        Session session=sessionFactory.openSession();
        session.beginTransaction();
        Query query =session.createQuery("from Hotel");
        List<Hotel> hotelList=query.list();
        session.getTransaction().commit();
        return hotelList;
    }
}
