package com.xingtu.index.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.comment.dao.CommentDao;
import com.xingtu.entity.Scene;
import com.xingtu.entity.Strategy;
import com.xingtu.entity.Users;
import com.xingtu.scene.dao.SceneDao;
import com.xingtu.scene.service.SceneService;
import com.xingtu.strategy.service.StrategyService;
import com.xingtu.util.ReadLog;

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
	public String index(HttpServletRequest request,HttpSession session) {
		/*获取热门八景点*/
		List<Strategy> list2 = strategyservice.findIndexStrategy();
		request.setAttribute("indexStrategy", list2);
		List<Scene> list1=ss.getSceList();
		Users users = (Users)session.getAttribute("user");
		if(users !=null) {
			ReadLog rl = new ReadLog();
			List<String> sceneid = rl.Tj(users);
			if(sceneid!=null) {
				List<Scene>list = ss.TjScene(sceneid);
				request.setAttribute("scelist", list);
			}else {
				request.setAttribute("scelist", list1);
			}
		}else {
			request.setAttribute("scelist", list1);
		}
		return "index";
	}
}
