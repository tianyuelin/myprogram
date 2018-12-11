package com.xingtu.journey.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.entity.Scene;
import com.xingtu.journey.dao.JourneyDao;

@Service
@Transactional(readOnly=true)
public class JourneyService {
	@Resource
	private JourneyDao jd;
	public List<Scene> getCityList(){
		return jd.getCityList();
	}
}
