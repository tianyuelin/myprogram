package com.xingtu.scene.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Scene;
import com.xingtu.scene.service.SceneService;

@Controller
@RequestMapping("/sence")
public class SceneController {
	@Resource
	private SceneService ss;
	@RequestMapping(value="/singlesence",method=RequestMethod.GET)
	public String findSingleScene(HttpServletRequest request,@RequestParam("id") int id) {
		Scene s = ss.findScene(id);
		request.setAttribute("singlescene", s);
		return "xiangqing2";
	}
}
