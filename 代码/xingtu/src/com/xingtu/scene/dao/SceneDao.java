package com.xingtu.scene.dao;

import java.io.Serializable;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Scene;
@Repository
public class SceneDao{
	@Resource
	private SessionFactory sf;
	public Scene findSceneById(int id) {
		Session session = sf.getCurrentSession();
		Scene s = (Scene)session.createQuery("from Scene where sceneId="+id).uniqueResult();
		System.out.println(s.getRoute());
		//String route = s.getRoute().replaceAll("\n", "<br>");
		//s.setRoute(route);
		String ticketPrice = s.getTicketPrice().replaceAll("\\n", "<br>");
		s.setTicketPrice(ticketPrice);
		System.out.println("1"+ticketPrice);
		System.out.println("secend:"+s.getTicketPrice());
		String opentime = s.getOpentime().replaceAll("\\n", "<br>");
		s.setOpentime(opentime);
		String describee = s.getDescribee().replaceAll("\\n", "<br>");
		s.setDescribee(describee);
		return s;
		
	}
	
}
