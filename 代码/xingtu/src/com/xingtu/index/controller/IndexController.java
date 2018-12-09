package com.xingtu.index.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.entity.Nav;
import com.xingtu.entity.Scene;
import com.xingtu.nav.service.NavService;
import com.xingtu.scene.service.SceneService;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Resource
	private SceneService ss;
	@RequestMapping(value="/scelist",method=RequestMethod.GET)
	public String index(HttpServletRequest request) {
		/*获取热门八景点*/
		List<Scene> list1=ss.getSceList();
		request.setAttribute("scelist", list1);
		return "index";
	}
}
