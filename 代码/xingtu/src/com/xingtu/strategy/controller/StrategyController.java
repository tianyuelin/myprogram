package com.xingtu.strategy.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Users;
import com.xingtu.strategy.service.StrategyService;

import javafx.scene.text.Text;

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
	public String createyouji(@RequestParam("text")String []texts,@RequestParam("ltitle")String []titles,@RequestParam("title")String title,@RequestParam("address")String []addresses,HttpSession session) {
		Users u= (Users)session.getAttribute("user");
		ss.createStrategy(titles, texts, addresses, title, u);
		return "createxc";
	}
}
