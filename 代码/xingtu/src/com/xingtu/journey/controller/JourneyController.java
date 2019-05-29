package com.xingtu.journey.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.entity.Glshoucang;
import com.xingtu.entity.Journey;
import com.xingtu.entity.Page;
import com.xingtu.entity.Scene;
import com.xingtu.entity.Sceneshoucang;
import com.xingtu.entity.Strategy;
import com.xingtu.entity.Users;
import com.xingtu.journey.service.JourneyService;
import com.xingtu.log.Browse;
import com.xingtu.log.JourneyLog;
import com.xingtu.user.service.UserService;

@Controller
@RequestMapping("/journey")
public class JourneyController {
	@Resource
	private JourneyService js;
	@Resource
	private UserService userService;
	@RequestMapping(value="/citylist",method=RequestMethod.GET)
	public String getCity(HttpServletRequest request) {
		/* 获取热门城市 */
		List<Scene> list1=js.getCityList();
		request.setAttribute("citylist", list1);
		return "createxingcheng";
	}
	@RequestMapping(value="/findcitybyname",method=RequestMethod.POST)
	public String findCitybyname(@RequestParam(value="ctname")String name,HttpServletRequest request) {
		List<Scene> list=js.findCitybyname(name);
		request.setAttribute("citylist", list);
		return "createxingcheng";
	}
	@RequestMapping(value="/journeylist",method=RequestMethod.POST)
	public String createJour(HttpServletRequest request,HttpSession session,@RequestParam(value="pageNum",defaultValue="1")int pageNum,@RequestParam(value="cityname",defaultValue="null")String[] cityname,@RequestParam(value="is",defaultValue="false")boolean is) {
		/* 获取热门城市 */
		//将获取到的城市信息上传到request中，方便分页的使用
		String []names=cityname;
		if(!("null").equals(cityname[0])) {
			session.setAttribute("cityname", names);
		}
		String[] ns = (String[]) session.getAttribute("cityname"); 
		Page<Scene> p = new Page<Scene>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(3);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		List<Scene> scens=null;
		if(("null").equals(cityname[0])){
			 scens= js.getJourneyList(p.getCurrentPageNum(),p.getPageSize(),ns);
		}else {
			System.out.println("city is not null");
			scens=js.getJourneyList(p.getCurrentPageNum(),p.getPageSize(),cityname);
		}
		//List<Scene> scens = js.getJourneyList(p.getCurrentPageNum(),p.getPageSize(),cityname);
		p.setList(scens);
		session.setAttribute("page", p);
		Page<Sceneshoucang> p1 = new Page<Sceneshoucang>();
		p1.setCurrentPageNum(pageNum);
		p1.setPageSize(3);
		p1.setNextPageNum(pageNum+1);
		p1.setPrePageNum(pageNum-1);
		Users u= (Users)session.getAttribute("user");
		List<Sceneshoucang> sce2=js.getScScene(u.getEmail(), p1.getCurrentPageNum(),p1.getPageSize());
		p1.setList(sce2);
		request.setAttribute("mypage", p1);
		if(is==true) {
			return "createer";
		}else {
			return "ajax";
		}
		
	}
	//创建行程
	@RequestMapping(value="/createxc",method=RequestMethod.POST)
	public String createxc(@RequestParam(value="diid",required=false)String []sceneid,@RequestParam(value="jtime",required=false)String jtime,@RequestParam(value="jtitle",required=false)String jtitle,HttpSession session,HttpServletRequest request,@RequestParam(value="juli")String []julis){
		Users u= (Users)session.getAttribute("user");
		Journey journey=js.createJourney(sceneid, u, jtime, jtitle);
		Date d = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
		Browse blog = new Browse();
		for(String id : sceneid) {
			
			JourneyLog jl = new JourneyLog();
			jl.logsth(u.getEmail(), id, sdf.format(d));
		}
		List<String> juli = new ArrayList<String>();
		for(int i=0;i<julis.length;i++) {
			juli.add(julis[i]);
		}
		request.setAttribute("juli", juli);
		request.setAttribute("journey", journey);
		return "xingchengshow";
	}
	@RequestMapping(value="/singleJour",method=RequestMethod.GET)
	public String findSingleJour(HttpServletRequest request,@RequestParam(value="jid")int id) {
		Journey j = js.findJourById(id);
		request.setAttribute("journey", j);
		return "xingchengshow";
	}
	@RequestMapping(value="/deletJour",method=RequestMethod.GET)
	public String deletJour(HttpServletRequest request,@RequestParam(value="jid")int id,HttpSession session) {
		this.js.deletJour(id);
		Object obj = session.getAttribute("user");
		if(obj!=null) {
			Users user =(Users)obj;
			String myemail=user.getEmail();
			//获取我关注的人数并存入Session
			Long FGCount=this.userService.findFGCount1(myemail);
			session.setAttribute("FGCount", FGCount);
			//获取我粉丝的人数
			Long fansCount = this.userService.findfansCount1(myemail);
			session.setAttribute("fansCount",fansCount);		
			//获取攻略
			List<Strategy> strategys = this.userService.findStrategyByEmail(myemail);
			request.setAttribute("strategys", strategys);
			//获取行程
			List<Journey> journeys=this.userService.findJourneyByEmail(myemail);
			request.setAttribute("journeys", journeys);
			//获取心愿清单（收藏景点）
			List<Sceneshoucang> scenes=this.userService.findScScene(myemail);
			request.setAttribute("scenes", scenes);
			List<Glshoucang> glshoucangs=this.userService.findglShoucang(myemail);
			request.setAttribute("glshous", glshoucangs);
		}
		return "user";
	}
}
