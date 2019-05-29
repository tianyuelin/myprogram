package com.xingtu.recommend;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class ReadData {
	@Resource
	private SessionFactory sessionFactory;
	public List<List<String>> findadd(){
		List<List<String>> record = new ArrayList<List<String>>();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select didian from Tag");
		List<String> list = q.list();
		List<String> add = new ArrayList<String>();
		for (String s : list) {
			String[] a= s.split("：");
			add.add(a[1]);
		}
		for(String s:add) {
			String [] a = s.split(">");
			record.add(Arrays.asList(a));
		}
		return record;
	}
}
