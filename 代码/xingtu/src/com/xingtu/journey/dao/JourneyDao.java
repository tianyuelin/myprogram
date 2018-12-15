package com.xingtu.journey.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Journey;
import com.xingtu.entity.Scene;

@Repository
public class JourneyDao {
	/**
	 * 查询热门城市
	 * 
	 */
	@Resource
	private SessionFactory sf;
	public List<Scene> getCityList(){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Rmcity");
		q.setFirstResult(0);
		q.setMaxResults(9);
		return q.list();
	}
	/**
	 * 查询该城市的热门景点
	 * 
	 */
	public List<Scene> getJourneyList(int pageNum,int pageSize){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Scene s where s.img is not null");
		q.setFirstResult((pageNum-1)*pageSize);
		q.setMaxResults(pageSize);
		return q.list();
	}
	//向数据库插数据
	public void inserUser(Journey j) {
		Session session=this.sf.openSession();
		Transaction tr=session.beginTransaction();
		session.save(j);
		tr.commit();
	}
}
