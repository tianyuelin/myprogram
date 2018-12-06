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
		return s;
	}
	
}
