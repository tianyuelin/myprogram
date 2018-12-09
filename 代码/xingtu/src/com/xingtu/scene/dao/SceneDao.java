package com.xingtu.scene.dao;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
@Repository
public class SceneDao{
	@Resource
	private SessionFactory sf;
	public Scene findSceneById(int id) {
		Session session = sf.getCurrentSession();
		Scene s = (Scene)session.createQuery("from Scene where sceneId="+id).uniqueResult();
		String route = s.getRoute().replaceAll("\n", "<br>");
		s.setRoute(route);
		String ticketPrice = s.getTicketPrice().replaceAll("\\r\\n", "<br>");
		s.setTicketPrice(ticketPrice);
		//System.out.println("1"+ticketPrice);
		//System.out.println("secend:"+s.getTicketPrice());
		String opentime = s.getOpentime().replaceAll("\\r\\n", "<br>");
		s.setOpentime(opentime);
		String describee = s.getDescribee().replaceAll("\\r\\n", "<br>");
		s.setDescribee(describee);
		Query q = session.createQuery("from SceneImgs where pname='"+s.getSname()+"'");
		return s;
	}
	public List<SceneImgs> findSceneImgs(String name){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from SceneImgs where pname='"+name+"'");
		return q.list();
	}
	public List<Scene> findAllScene(int pageNum,int pageSize){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Scene where img is not null");
		q.setFirstResult((pageNum-1)*pageSize);
		System.out.println(pageNum);
		q.setMaxResults(pageSize);
		return q.list();
	}
}
