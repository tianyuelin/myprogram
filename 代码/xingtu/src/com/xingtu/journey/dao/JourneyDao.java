package com.xingtu.journey.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.JourDiv;
import com.xingtu.entity.Journey;
import com.xingtu.entity.Scene;
import com.xingtu.entity.StrategyDiv;
import com.xingtu.entity.Users;

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
	/**
	 * 向数据库中插入数据
	 * @param 
	 */
	public Journey saveJourney(Scene scenes[],Users user,String jtime,String jtitle) {
		List <JourDiv> jds=new ArrayList<JourDiv>();
		Journey j=new Journey();
		Session session=this.sf.getCurrentSession();
		if(true) {
			for(Scene diname : scenes) {
				JourDiv jd=new JourDiv();
				jd.setScene(diname);
				jd.setJourney(j);
				j.getJd().add(jd);
			}
			j.setUser(user);
			j.setCreatetime(new Date());
			j.setJtitle(jtitle);
			j.setJtime(jtime);
			session.save(j);
			System.out.println("ch");
			for(int i=0;i<jds.size();i++) {
				jds.get(i).setJourney(j);
				session.save(jds.get(i));
			}
			j.setJd(jds);
			return j;
		}else {
			return null;
		}
	}
	/**
	 * 根据景点查询scene的img和address
	 */
	public List<Scene> findJour(String journames){
		Session session=sf.getCurrentSession();
		Query q=session.createQuery("from Scene s where s.sname=?0");
		q.getParameter(journames);
		return q.list();		
	}
}
