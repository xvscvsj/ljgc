package com.zh.ljgc.dao;

import com.zh.ljgc.entity.Channel;
import com.zh.ljgc.utils.page.Pagination;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

/**
 * Created by Administrator on 2016/11/15 0015.
 */
public class PageDao<M> {

    @Autowired
    private SessionFactory sessionFactory;
    public Pagination pageList(Integer pageNo,Integer pageSize) {
        Session session = sessionFactory.getCurrentSession();
        //统计出“丽江古城最真实的景区动态信息”的总数
        Channel channel = new Channel();
        channel.setDescription("丽江古城最真实的景区动态信息");
        Long count = (Long) session.createQuery("select count(c.id) from Content c where c.channel=:description")
                .setParameter("description", channel).getSingleResult();

        Pagination result = new Pagination(pageNo, pageSize, count.intValue());

        //获取分页列表数据
        List list = sessionFactory.getCurrentSession().createQuery("from Content c")
                .setFirstResult(pageNo).setFetchSize(pageSize).list();
        result.setList(list);
        return result;
    }
}
