package com.xingtu.index.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xingtu.nav.service.NavService;

@Controller
@RequestMapping("/index")
public class IndexController {
	private NavService ns;
	
}
