package com.xingtu.guanzhu.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.xingtu.entity.Followed;
import com.xingtu.entity.Users;
import com.xingtu.guanzhu.dao.GuanzhuDao;

@Service
public class GuanzhuService {
	
	@Resource
    private GuanzhuDao guanzhuDao;
	
	public void InsertGuanzhu1(Followed follow) {
		this.guanzhuDao.InsertGuanzhu(follow);	
	}
	
	public List<Users> findFollows1(String myemail) {
		return this.guanzhuDao.findFollows(myemail);
	}

		
	
}
