package com.xingtu.sixin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Sx;

@Repository
public class SxDao {
	@Resource
    private SessionFactory sessionFactory;
	
	public  List<Sx> InsertLTContent(Sx sx) {
		//插入数据
		Session session=this.sessionFactory.getCurrentSession();
		session.save(sx);
		//查出数据
	    Query q=session.createQuery("from Sx");
	    return q.list();
	}
}
