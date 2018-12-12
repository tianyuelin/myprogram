package com.xingtu.sixin.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.entity.Sx;
import com.xingtu.sixin.service.SxService;

@Controller
public class SxController {
	
	@Resource
	private SxService sxService;
	
	 @RequestMapping(value="/sxController",method=RequestMethod.POST)
	public String InsertLTContent2(Sx sx,HttpServletRequest request) {
		List<Sx> list=this.sxService.InsertLTContent1(sx);
		request.setAttribute("list", list);
		return "sixindetail";
		
	}

}
