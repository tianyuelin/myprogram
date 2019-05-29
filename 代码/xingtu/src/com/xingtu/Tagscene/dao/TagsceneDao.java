package com.xingtu.Tagscene.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class TagsceneDao {
	@Resource
	private SessionFactory sessionFactory;
	public Set<String> findAll(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select ts.tag from Tag ts");	
		List<String> list =q.list();
		List<List<String>> lists = new ArrayList<List<String>>();
		Set<String> tags = new HashSet<String>();
		for(String str:list) {
			String[] s = str.split(" ");
			lists.add(Arrays.asList(s));
		}
		for(int i=0;i<lists.size();i++) {
			for(int j =0;j<lists.get(i).size();j++) {
				tags.add(lists.get(i).get(j));
			}
		}
		return tags;
	}
	public List<Map<String,List<String>>> sandt(){
		List<Map<String,List<String>>> sandt = new ArrayList<Map<String,List<String>>>();
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select ts.tag,ts.didian from Tag ts");
		List<Object[]>olist = q.list();
		for(Object[] o : olist) {
			List<String> add = new ArrayList<String>();
			String []temp=((String)o[1]).split("：");
			String []address =temp[1].split(">");
			String [] tags = ((String)o[0]).split(" ");
			for(String name : address) {
				Map<String,List<String>> map = new HashMap<String,List<String>>();
				map.put(name, Arrays.asList(tags));
				sandt.add(map);
			}
		}
		return sandt;
	}
}