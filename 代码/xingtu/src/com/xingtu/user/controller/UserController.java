package com.xingtu.user.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Md5Encode;
import com.xingtu.entity.Users;
import com.xingtu.user.service.UserService;

@Controller
public class UserController {
    
	@Resource
	private UserService userService;
	
	//注册控制器
	@RequestMapping(value="/registController",method=RequestMethod.POST)
	public String getRegistPerson(Users users,HttpSession session,HttpServletRequest request,@RequestParam("chkpwd") String chkpwd) { //参数要想使用user，必须保证表单属性name与数据库属性相同
		String mymes=this.userService.getRegistPerson1(users);//b用来判断是否能够成功注册，b是字符串
		chkpwd=Md5Encode.getMD5(chkpwd.toString().getBytes());//获得其MD5码
		if(users.getPassword().equals(chkpwd) && !mymes.equals("该邮箱已存在，可直接登录")) {
			Boolean issigned=true;
			request.getSession().setAttribute("isSigned",issigned);//定义一个证明已登录的接口
			return "index";
		}else {
			request.setAttribute("errormessage",mymes);
			return 	"sign";
		}
	}
	
	
	//登录控制器
	@RequestMapping(value="/loginController",method=RequestMethod.POST)
	public String getLoginPerson(Users users,HttpSession session,HttpServletRequest request) {
		if(this.userService.getLoginPerson1(users)==true) {
			return "index";
		}
		else {
			request.setAttribute("errormessage", "该邮箱未注册或密码错误，请重新输入");
			return "sign";
		}
		
	    //验证数据库中是否存在这个邮箱，如果存在验证密码是否正确
		
	
		
	}
	
}
