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
import com.xingtu.user.service.UserService;


@Controller
public class GuanzhuController {
    
	@Resource
	private GuanzhuService guanzhuService;
	@Resource
	private UserService userService;
	@RequestMapping(value="/guanzhuController")
	public String guanzhuperson(Followed followed,@RequestParam("bepersonemail") String bepersonemail,HttpServletRequest request) {
		
		//将被关注者的email放入

		followed.setFollwed_user(bepersonemail);		
		//将关注者（登录用户）放入

		Users user= (Users) request.getSession().getAttribute("user");
		String myemail=user.getEmail();
		followed.setUseremail(myemail);
		//判断曾经是否已插入，若无，则插入，若有则返回已关注
		Boolean b=this.guanzhuService.IfGuanZhu1(followed);
		if(b) {//已关注
			request.setAttribute("ifGuanzhu", true); //如果已关注，存入true
			System.out.println("已关注");
		}
		else {//未关注
			this.guanzhuService.InsertGuanzhu1(followed);
			request.setAttribute("ifGuanzhu", false);
			System.out.println("未关注");
		}
		Long FGCount=this.userService.findFGCount1(bepersonemail);
		request.setAttribute("FGCount", FGCount);
		//获取粉丝的人数
		Long fansCount = this.userService.findfansCount1(bepersonemail);
		request.setAttribute("fansCount",fansCount);
		Users u = this.userService.UserCenter(bepersonemail);
		request.setAttribute("CenterOwn", u);
		this.guanzhuService.InsertGuanzhu1(followed);
		return "otherseeUser";
	}
	
	
	//获得关注人都有谁的函数
	@RequestMapping(value="/guanzhuUser")
	public String guanzhuUser(HttpServletRequest request) {
		
		
		Users user= (Users) request.getSession().getAttribute("user");
		String myemail=user.getEmail();
		
		List<Users> felloPerson=this.guanzhuService.findFollows1(myemail);
		
		request.setAttribute("felloPerson", felloPerson);
		
		return "fellow";
	}
	
	//获得粉丝都有谁的函数
	@RequestMapping(value="/fansUser")
	public String fansUser(HttpServletRequest request) {
		//获取目前登录用户的邮箱
		Users user=(Users) request.getSession().getAttribute("user");
		String myemail=user.getEmail();
		List<Users> fansPerson=this.guanzhuService.findFans1(myemail);
		request.setAttribute("fansPerson", fansPerson);
		return "fans";
	}
	
	
}
