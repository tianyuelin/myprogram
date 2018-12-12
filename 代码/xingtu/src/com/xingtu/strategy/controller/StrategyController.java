package com.xingtu.strategy.controller;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.strategy.service.StrategyService;

@Controller
@RequestMapping("/strategy")
public class StrategyController {
	@Resource
	private StrategyService ss;
	@RequestMapping(value="/create",method=RequestMethod.GET)
	public String createyouji() {
		return "createxc";
	}
}
