package com.xingtu.Tagscene.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
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
	public Map<String,List<String>> sandt(){
		Map<String,List<String>> sandt = new HashMap<String,List<String>>();
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select ts.tag,ts.didian from Tag ts");
		List<Object[]>olist = q.list();
		for(Object[] o : olist) {
			List<String> add = new ArrayList<String>();
			String []temp=((String)o[1]).split("：");
			String []address =temp[1].split(">");//有重复名称
			String [] tags = ((String)o[0]).split(" ");
			for(String name : address) {
				if(sandt.containsKey(name)) {
					List<String> t = new ArrayList<String>(sandt.get(name));
					for(String tag:tags) {
						t.add(tag);
					}
					sandt.put(name, t);
				}else {
					sandt.put(name,  Arrays.asList(tags));
				}
			}
		}
		return sandt;
	}
	public Map<String,float[]> julei(Map<String,List<String>> LM,Set<String> SS) {
		Map<String,float[]> data = new HashMap<String,float[]>();
		Set<String> keys= new HashSet<String>();
		keys = LM.keySet();
		Iterator<String> iter= keys.iterator();
		for(int i=0;i<LM.size()&&iter.hasNext();i++) {
         List<String> list3=new ArrayList<String>(SS);
         String name = iter.next();
        	List<String> list2=LM.get(name);
        	float [] num = new float[48];
        	for(int m =1;m<=list3.size();m++) {
        		if(list2.contains(list3.get(m-1))) {
        			num[m-1]=m;
        		}else {
        			num[m-1]=0;
        		}
        	data.put(name,num );
		}
	}
		return data;
	}
}