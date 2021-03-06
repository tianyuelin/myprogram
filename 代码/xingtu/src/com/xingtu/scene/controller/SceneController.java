package com.xingtu.scene.controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.comment.service.CommentService;
import com.xingtu.entity.Comments;
import com.xingtu.entity.Page;
import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
import com.xingtu.entity.Sceneshoucang;
import com.xingtu.entity.Users;
import com.xingtu.log.Browse;
import com.xingtu.log.Collectlog;
import com.xingtu.recommend.InvokeByRuntime;
import com.xingtu.scene.service.SceneService;

@Controller
@RequestMapping("/sence")
public class SceneController {
	@Resource
	private SceneService ss;
	@Resource
	private CommentService commentService;
	//进入景点详情页，并且判断是否已经收藏
	@RequestMapping(value="/singlesence",method=RequestMethod.GET)
	public String findSingleScene(HttpServletRequest request,@RequestParam("id") int id,HttpSession session) {
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		// 将关注者（登录用户）放入
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
		} else {
			// 判断曾经是否已插入，若无，则插入，若有则返回已关注
			Date d = new Date();
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH-mm-ss");
			Browse blog = new Browse();
			blog.logsth(u.getEmail(), s.getSceneId(), sdf.format(d));
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {// 已关注
				request.setAttribute("ifShoucang", true); // 如果已关注，存入true,使页面显示已关注
			} else {// 未关注
				request.setAttribute("ifShoucang", false);
			}

		}
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		
		
		//显示评论
		List<Comments> list=this.commentService.findAll();
		request.setAttribute("commentslist", list);
		
		
		return "Detilstest";
	}
	//景点页从此处获得景点
	@RequestMapping(value="/allsence",method=RequestMethod.GET)
	public String findScenes(HttpServletRequest request,HttpSession session,@RequestParam(value="pageNum",defaultValue="1")int pageNum) {
		Page<Scene> p = new Page<Scene>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(8);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		List<Scene> scenes = ss.findAllScene(p.getCurrentPageNum(),p.getPageSize());
		p.setList(scenes);
		
		//设置热门景点
		
		//1.把此时的用户传入
//		Object user=session.getAttribute("user");
//		if(user!=null) {
//			Users users=(Users)user;
//			InvokeByRuntime ibr=new InvokeByRuntime();
//			try {
//				List scenelist=ibr.getHotSecneid(users);
//				
//				if(scenelist.size()==0) {
					List<Scene> hotscene=ss.getHotSceneList();
					request.setAttribute("hotscene", hotscene);
//					
//				}
//				else {
//				//根据找到的景点id找到相应的热门景点
////				    List<Scene> hotscene=ss.getBaseItemScene(scenelist);
////				    request.setAttribute("hotscene", hotscene);
//				
//				}
//				
//			} catch (InterruptedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		else {
//			List<Scene> hotscene=ss.getHotSceneList();
//			request.setAttribute("hotscene", hotscene);
//		}
//List<Scene> hotscene = ss.getHotScene();	
		request.setAttribute("page", p);
		return "meijing";
	}
	//点击后收藏，变为收藏状态
	@RequestMapping(value="/addshoucang",method=RequestMethod.GET)
	public String addshoucang(HttpServletRequest request,@RequestParam(value="sceneid")int sceneid,HttpSession session) {
		Users u= (Users)session.getAttribute("user");
		//在此处添加收藏日志
		Collectlog cll=new Collectlog();
		Date d=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd HH-mm-ss");
		String time=sdf.format(d);
		cll.logsth(u.getEmail(), sceneid,time);
		ss.InsertShoucang(sceneid, u);
		request.setAttribute("ifShoucang", true);//显示已关注
		Scene s = ss.findScene((int)sceneid);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(sceneid).getSname());
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		return "Detilstest";
	}
	//取消收藏，为未收藏状态
	@RequestMapping(value="/noshoucang",method=RequestMethod.GET)
	public String deleshoucang(HttpServletRequest request,@RequestParam(value="sceneid")int sceneid ,HttpSession session) {
		Sceneshoucang ssc2=new Sceneshoucang();
		Users u= (Users)session.getAttribute("user");
		ssc2.setUser(u);
		this.ss.delectShoucang(sceneid,u);
		request.setAttribute("ifShoucang", false);
		Scene s = ss.findScene((int)sceneid);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(sceneid).getSname());
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		return "Detilstest";
	}
	@RequestMapping(value="/findbyname",method=RequestMethod.POST)
	public String findbyname(@RequestParam(value="name")String name,@RequestParam(value="pageNum",defaultValue="1")int pageNum,HttpServletRequest request) {
		Page<Scene> p = new Page<Scene>();
		p.setCurrentPageNum(pageNum);
		p.setPageSize(8);
		p.setNextPageNum(pageNum+1);
		p.setPrePageNum(pageNum-1);
		List<Scene> scenes = ss.findByName(name);
		p.setList(scenes);
		List<Scene> hotscene = ss.getHotScene();
		request.setAttribute("hotscene", hotscene);
		request.setAttribute("page", p);
		return "meijing";
	}
}
