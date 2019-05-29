package com.xingtu.Tagscene.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.Tagscene.dao.TagsceneDao;

@Service
@Transactional(readOnly=false)
public class TagsceneService {
	@Resource
	private TagsceneDao tagsceneDao;
	public List<String> findtag(){
		return this.tagsceneDao.findAll();
	}
}

