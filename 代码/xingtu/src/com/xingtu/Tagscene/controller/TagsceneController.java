package com.xingtu.Tagscene.controller;

import java.util.HashSet;
import java.util.List;
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
	
	@RequestMapping(value="/save",method=RequestMethod.GET)
	public Set findtag(){
		System.out.println(this.tagsceneService.findtag());
		System.out.println("111");
		List<String> lists=this.tagsceneService.findtag();
		Set<String> set=new HashSet<>();
		for(String l:lists) {
			set.add(l);
		}
		System.out.println(set);
		return set;
	}
}
