package com.xingtu.journey.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.entity.Journey;
import com.xingtu.entity.Scene;
import com.xingtu.entity.Users;
import com.xingtu.journey.dao.JourneyDao;

@Service
@Transactional(readOnly=false)
public class JourneyService {
	@Resource
	private JourneyDao jd;
	public List<Scene> getCityList(){
		return jd.getCityList();
	}
	public List<Scene> getJourneyList(int pageNum,int pageSize){
		return jd.getJourneyList(pageNum,pageSize);
	}
	public Journey createJourney(String []journames,Users user,String jtime,String jtitle) {
		return jd.saveJourney(journames, user, jtime, jtitle);
	}
	public List<Scene> findJour(String journames){
		return jd.findJour(journames);
	}
}
