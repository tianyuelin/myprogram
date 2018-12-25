package com.xingtu.strategy.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Page;
import com.xingtu.entity.Strategy;
import com.xingtu.entity.Users;
import com.xingtu.strategy.service.StrategyService;


@Controller
@RequestMapping("/strategy")
public class StrategyController {
	@Resource
	private StrategyService ss;
	@RequestMapping(value="/opencreate",method=RequestMethod.GET)
	public String openCreate() {
		return "createxc";
	}
	@RequestMapping(value="/create",method=RequestMethod.POST)
	public String createyouji(@RequestParam(value="tag",required=false,defaultValue="null")String []tags,@RequestParam(value="text",required=false)String []texts,@RequestParam(value="ltitle",required=false)String []titles,@RequestParam(value="title",required=false)String title,@RequestParam(value="address",required=false)String []addresses,HttpSession session,@RequestParam(value="headerimg",required=false)MultipartFile file,HttpServletRequest request){
		//��ȡ��Ŀ·��
		String path= session.getServletContext().getRealPath("/");
		//E:\BigData\Eclipse\conding\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\xingtu\
		Users u= (Users)session.getAttribute("user");
		//System.out.println(tags[0]);
		Strategy strategy = ss.createStrategy(tags,titles, texts, addresses, title, u,file,path);
		request.setAttribute("strategy", strategy);
		return "YouJishow";
	}
	@RequestMapping(value="/allStrategy",method=RequestMethod.GET)
	public String findAllStrategy(HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		Page<Strategy> p = new Page<Strategy>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(4);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		List<Strategy> allstrategy=new ArrayList<Strategy>();
		//if(tag=="null") {
			allstrategy= ss.findAllStrategy(p.getCurrentPageNum(),p.getPageSize());
		//}else {
			//allstrategy= ss.findByTag(p.getCurrentPageNum(),p.getPageSize(),tag);
		//}
		
		p.setList(allstrategy);
		List<Strategy> newstrategy = ss.findNewStrategy();
		List<Strategy> hotstrategy = ss.findHotStrategy();
		request.setAttribute("newstrategy", newstrategy);
		request.setAttribute("hotstrategy", hotstrategy);
		request.setAttribute("allstrategy", p);
		return "list";
	}
	@RequestMapping(value="/singleStrategy",method=RequestMethod.GET)
	public String findSingleStrategy(HttpServletRequest request,@RequestParam(value="StrategyId")int id) {
		Strategy s = ss.findSingleStrategy(id);
		request.setAttribute("strategy", s);
		return "YouJishow";
	}
	@RequestMapping(value="/findbyTag",method=RequestMethod.GET)
	public String findStrategyByTag(HttpServletRequest request,@RequestParam(value="tag")String tag,@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		Page<Strategy> p = new Page<Strategy>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(4);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		List<Strategy> allstrategy=new ArrayList<Strategy>();
		allstrategy = ss.findByTag(p.getCurrentPageNum(),p.getPageSize(),tag);
		p.setList(allstrategy);
		List<Strategy> newstrategy = ss.findNewStrategy();
		List<Strategy> hotstrategy = ss.findHotStrategy();
		request.setAttribute("newstrategy", newstrategy);
		request.setAttribute("hotstrategy", hotstrategy);
		request.setAttribute("allstrategy", p);
		return "list";
	}
	@RequestMapping(value="/findbyaddress",method=RequestMethod.POST)
	public String findbyAddress(@RequestParam(value="address")String address,HttpServletRequest request,@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		Page<Strategy> p = new Page<Strategy>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(4);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		List<Strategy> allstrategy=new ArrayList<Strategy>();
		allstrategy = ss.findByAddress(address);
		p.setList(allstrategy);
		List<Strategy> newstrategy = ss.findNewStrategy();
		List<Strategy> hotstrategy = ss.findHotStrategy();
		request.setAttribute("newstrategy", newstrategy);
		request.setAttribute("hotstrategy", hotstrategy);
		request.setAttribute("allstrategy", p);
		return "list";
	}
}