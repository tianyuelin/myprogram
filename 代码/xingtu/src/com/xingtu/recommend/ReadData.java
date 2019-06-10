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
	public List<List<String>> findadd(String[] city){
		List<List<String>> record = new ArrayList<List<String>>();
		Session session=this.sessionFactory.getCurrentSession();
		String names="";
		int i=0;
		for(String name : city) {
			i++;
			if(i<city.length) {
				names+="city='"+name+"' or ";
			}if(i==city.length) {
				names+="city='"+name+"'";
			}
		}
		String sql = "select didian from Beijing where ";
		Query q = session.createQuery(sql+names);
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