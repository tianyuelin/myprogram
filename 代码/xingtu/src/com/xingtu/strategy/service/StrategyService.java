package com.xingtu.strategy.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.entity.Strategy;
import com.xingtu.entity.Users;
import com.xingtu.strategy.dao.StrategyDao;

@Service
@Transactional(readOnly=false)
public class StrategyService {
	@Resource
	private StrategyDao sd;
	public Strategy createStrategy(String []titles,String []texts,String []addresses,String title,Users user) {
		return sd.saveStrategy(titles, texts, addresses, title, user);
	}
}
