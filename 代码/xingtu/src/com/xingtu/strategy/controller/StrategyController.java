package com.xingtu.strategy.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Users;
import com.xingtu.strategy.service.StrategyService;


@Controller
@RequestMapping("/strategy")
public class StrategyController {
	@Resource
	private StrategyService ss;
	@RequestMapping(value="/opencreate",method=RequestMethod.GET)
	public String openCreate() {
		return "createxc";
	}
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createyouji(@RequestParam(value="tag",required=false,defaultValue="null")String []tags,@RequestParam(value="text",required=false)String []texts,@RequestParam(value="ltitle",required=false)String []titles,@RequestParam(value="title",required=false)String title,@RequestParam(value="address",required=false)String []addresses,HttpSession session,@RequestParam(value="headerimg",required=false)MultipartFile file){
		Users u= (Users)session.getAttribute("user");
		//System.out.println(tags[0]);
		ss.createStrategy(tags,titles, texts, addresses, title, u,file);
		return "createxc";
	}
}
