package com.xingtu.comment.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.xingtu.comment.dao.CommentDao;
import com.xingtu.comment.service.CommentService;
import com.xingtu.entity.CommentScore;
import com.xingtu.entity.Comments;
import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
import com.xingtu.entity.Users;
import com.xingtu.log.Comment;
import com.xingtu.scene.service.SceneService;

@Controller
public class CommentController {
	@Resource
	private CommentService commentService;
	@Resource
	private SceneService ss;
	@Resource
	private CommentDao commentDao;
	@Resource
	private SceneService sceneService;
	
	//保存评论到数据库
	@RequestMapping(value="/save",method=RequestMethod.GET)
	public String save(HttpServletRequest request,HttpSession session){
		String q=request.getParameter("id");
		int id=Integer.parseInt(q);
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		// 将关注者（登录用户）放入
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
			return "sign";
		} else {
			// 判断曾经是否已插入，若无，则插入，若有则返回已关注
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {//已关注
				request.setAttribute("ifShoucang", true); // 如果已关注，存入true,使页面显示已关注
			} else {//未关注
				request.setAttribute("ifShoucang", false);
			}

		}

		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
        //获得页面评论
		String comment = request.getParameter("comment");	
		
		//将评论保存到数据库
		Comments ct=new Comments();
		
//		ct.setUsername("zhangsan");
		ct.setComment(comment);
		//保存当前用户
        ct.setUsername(u.getUsername());
		ct.setTime(new Date());
		
		this.commentService.save(ct);	
		
		List<Comments> list=this.commentService.findAll();
		request.setAttribute("commentslist", list);
		
		return "Detilstest";
	}
	//保存评分到数据库 一个用户一个景点评论一次
	@RequestMapping(value="/savePF",method=RequestMethod.GET)
	public String savepf(HttpServletRequest request,HttpSession session){
		Comment comment=new Comment();
		String q=request.getParameter("id");
		int id=Integer.parseInt(q);
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		//获取当前用户
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
			return "sign";
		} else {
			// 判断曾经是否已插入，若无，则插入，若有则返回已关注
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {// 已关注
				request.setAttribute("ifShoucang", true); //如果已关注，存入true,使页面显示已关注
			} else {// 未关注
				request.setAttribute("ifShoucang", false);
			}
		}
		List<Comments> list=this.commentService.findAll();
		request.setAttribute("commentslist", list);
        
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		
//		查询PF库数据
				List<CommentScore> listc=this.commentService.findAllPF();
		//判断数据库中是否已经存在同一个用户与一个景点的评论，有返回true  没有返回false
			boolean bl=true;
			for(CommentScore temp : listc) {
				
		        if(temp.getSceneid() == id  &&  temp.getUseremail().equals(u.getEmail())){           	 
                	 bl=true;
		         }
	             else {
		        	 bl=false;
                 }
        	}
		

		//如果有显示已评论
		if(bl == true) {
		}
		else {//如果没有用户在该地点评论则保存评分到数据库
          //添加数据评分到数据库
         String pf=request.getParameter("PF");
         float b=Float.parseFloat(pf);
         CommentScore cs=new CommentScore();
         cs.setPingfen(b);
         cs.setUsername(u.getUsername());
         cs.setName(s.getSname());
         cs.setUseremail(u.getEmail());
         cs.setSceneid(id);
         comment.logsth(u.getEmail(), id, b);
         this.commentService.save(cs);
		}
		
		//保存评分到scene中
		float avg=this.commentDao.findavg(id);
		this.sceneService.update(id, avg);
		
		return "Detilstest";
}
}