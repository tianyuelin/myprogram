package com.xingtu.guanzhu.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Followed;
import com.xingtu.entity.Users;
import com.xingtu.guanzhu.service.GuanzhuService;


@Controller
public class GuanzhuController {
    
	@Resource
	private GuanzhuService guanzhuService;
	
	@RequestMapping(value="/guanzhuController")
	public String guanzhuperson(Followed followed,@RequestParam("bepersonemail") String bepersonemail,HttpServletRequest request) {
		
		//将被关注者的email放入
		followed.setFollwed_user(bepersonemail);
		
		//将关注者放入
		Users currentUser= (Users) request.getSession().getAttribute("currentUser");
		String myemail=currentUser.getEmail();
		followed.setUseremail(myemail);
		this.guanzhuService.InsertGuanzhu1(followed);
		return "otherseeUser";
	}
	
	
	//获得关注人都有谁的函数
	@RequestMapping(value="/guanzhuUser")
	public String guanzhuUser(HttpServletRequest request) {
		
		
		Users currentUser= (Users) request.getSession().getAttribute("currentUser");
		String myemail=currentUser.getEmail();
		
		List<Users> felloPerson=this.guanzhuService.findFollows1(myemail);
		
		request.setAttribute("felloPerson", felloPerson);
		
		return "fellow";
	}
	
	
	
}
