package com.xingtu.index.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xingtu.entity.Nav;
import com.xingtu.nav.service.NavService;

@Controller
@RequestMapping("/index")
public class IndexController {
	@Resource
	private NavService ns;
	public String findNav(HttpServletRequest request) {
		List<Nav> navs = ns.findNav();
		request.setAttribute("navs", navs);
		return "index";
	}
}
