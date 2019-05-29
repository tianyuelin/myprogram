package com.xingtu.Tagscene.controller;

import java.util.Set;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.Tagscene.service.TagsceneService;


@Controller

public class TagsceneController {
	@Resource
	private TagsceneService tagsceneService;
	
	@RequestMapping(value="/tag",method=RequestMethod.GET)
	public Set findtag(){
		Set<String> set=this.tagsceneService.findtag();
		return set;
	}
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public void test() {
		this.tagsceneService.fandsand();
	}
	
}
