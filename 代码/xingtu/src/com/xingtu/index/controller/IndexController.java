package com.xingtu.index.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.comment.dao.CommentDao;
import com.xingtu.comment.service.CommentService;
import com.xingtu.entity.CommentScore;
import com.xingtu.entity.Nav;
import com.xingtu.entity.Scene;
import com.xingtu.entity.Strategy;
import com.xingtu.nav.service.NavService;
import com.xingtu.scene.dao.SceneDao;
import com.xingtu.scene.service.SceneService;
import com.xingtu.strategy.service.StrategyService;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Resource
	private SceneService ss;
	@Resource
	private StrategyService strategyservice;
	@Resource
	private CommentDao commentDao;
	@Resource
	private SceneService sceneService;
	@Resource
	private SceneDao sceneDao;
	@RequestMapping(value="/scelist",method=RequestMethod.GET)
	public String index(HttpServletRequest request) {
		/*获取热门八景点*/
		List<Scene> list1=ss.getSceList();
		List<Strategy> list2 = strategyservice.findIndexStrategy();
		request.setAttribute("scelist", list1);
		request.setAttribute("indexStrategy", list2);
		
		
		//从数据库commonmentSorce中查询景点的评分并求均值  并修改scene中的sorce值。
		int a=this.sceneDao.record();
		System.out.println(a);
		for(int i=1;i<a;i++) {
		float avg=this.commentDao.findavg(i);
		System.out.println(avg);
		this.sceneService.update(i, avg);
		}
		
		return "index";
	}
	
	
     
}
