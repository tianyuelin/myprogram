package com.xingtu.Tagscene.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TagsceneDao {
	@Resource
	private SessionFactory sessionFactory;
	public List<String> findAll(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select ts.tag from Tagscene ts");		
		return q.list();
	}
}