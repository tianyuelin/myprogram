package com.xingtu.recommend;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller

public class AprioriController {

	@Resource
	private AprioriService as;
	@RequestMapping("/apriori1")
	public void ap() {
		as.find();
	}
}
