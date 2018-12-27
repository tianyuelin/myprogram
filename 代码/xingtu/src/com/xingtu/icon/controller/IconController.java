package com.xingtu.icon.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Users;
import com.xingtu.icon.service.iconServiceImpl;

@Controller
public class IconController {
	
	@Resource
	private iconServiceImpl iconserviceImpl;
	
	@RequestMapping(value="/iconController")
	public String updateIcon(@RequestParam(value="file")MultipartFile file,HttpServletRequest request,HttpSession session) {
		String path=session.getServletContext().getRealPath("/");//得到Tomcat容器的根路径
		Users u = (Users)session.getAttribute("user");
		Users user=iconserviceImpl.changIcon1(file, path, u);  //将以上三个内容传入	
		session.setAttribute("user", user);	
		return "user";
	}
	

}
