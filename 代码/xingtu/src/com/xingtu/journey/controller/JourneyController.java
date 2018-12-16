package com.xingtu.journey.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Page;
import com.xingtu.entity.Scene;
import com.xingtu.journey.service.JourneyService;

@Controller
@RequestMapping("/journey")
public class JourneyController {
	@Resource
	private JourneyService js;
	@RequestMapping(value="/citylist",method=RequestMethod.GET)
	public String getCity(HttpServletRequest request) {
		/* 获取热门城市 */
		List<Scene> list1=js.getCityList();
		request.setAttribute("citylist", list1);
		return "createxingcheng";
	}
	@RequestMapping(value="/journeylist",method=RequestMethod.GET)
	public String createJour(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		/* 获取热门城市 */
		Page<Scene> p = new Page<Scene>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(3);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		System.out.println(pageNum);
		List<Scene> scens = js.getJourneyList(p.getCurrentPageNum(),p.getPageSize());
		p.setList(scens);
		request.setAttribute("page", p);
		return "createer";
	}
}
