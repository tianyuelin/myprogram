package com.xingtu.Tagscene.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.Tagscene.dao.TagsceneDao;

@Service
@Transactional(readOnly=false)
public class TagsceneService {
	@Resource
	private TagsceneDao tagsceneDao;
	public Set<String> findtag(){
		return this.tagsceneDao.findAll();
	}
	public List<Map<String,List<String>>> fandsand(){
		return this.tagsceneDao.sandt();
	}
}

