package com.xingtu.strategy.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Strategy;
import com.xingtu.entity.Users;
import com.xingtu.strategy.dao.StrategyDao;

@Service
@Transactional(readOnly=false)
public class StrategyService {
	@Resource
	private StrategyDao sd;
	public Strategy createStrategy(String []tags,String []titles,String []texts,String []addresses,String title,Users user,MultipartFile file,String path) {
		return sd.saveStrategy(tags,titles, texts, addresses, title, user,file,path);
	}
	public List<Strategy> findAllStrategy(int pageNum,int pageSize){
		return sd.findAllStrategy(pageNum,pageSize);
	}
}
