package com.xingtu.strategy.dao;

import javax.annotation.Resource;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

@Repository
public class StrategyDao {
	@Resource
	private SessionFactory sf;
	public void saveStrategy() {
		
	}

}
