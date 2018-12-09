package com.xingtu.scene.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Page;
import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
import com.xingtu.scene.service.SceneService;

@Controller
@RequestMapping("/sence")
public class SceneController {
	@Resource
	private SceneService ss;
	@RequestMapping(value="/singlesence",method=RequestMethod.GET)
	public String findSingleScene(HttpServletRequest request,@RequestParam("id") int id) {
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		System.out.println(imgs.size());
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		return "Detilstest";
	}
	@RequestMapping(value="/allsence",method=RequestMethod.GET)
	public String findScenes(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		Page<Scene> p = new Page<Scene>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(8);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		System.out.println(pageNum);
		List<Scene> scenes = ss.findAllScene(p.getCurrentPageNum(),p.getPageSize());
		p.setList(scenes);
		request.setAttribute("page", p);
		return "meijing";
	}
	
}
