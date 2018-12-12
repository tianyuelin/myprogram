package com.xingtu.strategy.dao;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Strategy;
import com.xingtu.entity.StrategyDiv;
import com.xingtu.entity.Users;

@Repository
public class StrategyDao {
	@Resource
	private SessionFactory sf;
	public Strategy saveStrategy(String []titles,String []texts,String []addersses,String title,Users user) {
		List<StrategyDiv> sds=new ArrayList<StrategyDiv>();
		Strategy s = new Strategy();
		if(titles.length==texts.length&&texts.length==addersses.length) {
			for(String ltitle : titles) {
				StrategyDiv sd=new StrategyDiv();
				sd.setTitle(ltitle);
				sds.add(sd);
			}
			for(int i=0;i<sds.size();i++) {
				sds.get(i).setContext(texts[i]);
				sds.get(i).setAddress(addersses[i]);
			}
			s.setSd(sds);
			s.setUser(user);
			s.setStime(new Date());
			return s;
		}else {
			return null;
		}
		
	}

}
