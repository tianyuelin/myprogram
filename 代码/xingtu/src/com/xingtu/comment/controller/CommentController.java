package com.xingtu.comment.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.util.SystemPropertyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

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
	//保存评论到数据库
	@RequestMapping(value="/save",method=RequestMethod.GET)
	public String save(HttpServletRequest request,HttpSession session){
		String q=request.getParameter("id");
		int id=Integer.parseInt(q);
		System.out.println(q);
		System.out.println("ee");
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		System.out.println(imgs.size());
		// 将关注者（登录用户）放入
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
		} else {
			// 判断曾经是否已插入，若无，则插入，若有则返回已关注
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {//已关注
				request.setAttribute("ifShoucang", true); // 如果已关注，存入true,使页面显示已关注
				System.out.println(request.getAttribute("ifShoucang"));
			} else {//未关注
				request.setAttribute("ifShoucang", false);
				System.out.println("未关注");
			}

		}

		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		System.out.println("11");
        //获得页面评论
		String comment = request.getParameter("comment");	
		System.out.println(comment);
		
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
		String q=request.getParameter("id");
		int id=Integer.parseInt(q);
		System.out.println(q);
		System.out.println("ee");
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		System.out.println(imgs.size());
		//获取当前用户
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
		} else {
			// 判断曾经是否已插入，若无，则插入，若有则返回已关注
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {// 已关注
				request.setAttribute("ifShoucang", true); //如果已关注，存入true,使页面显示已关注
				System.out.println(request.getAttribute("ifShoucang"));
			} else {// 未关注
				request.setAttribute("ifShoucang", false);
				System.out.println("未关注");
			}
		}
		List<Comments> list=this.commentService.findAll();
		request.setAttribute("commentslist", list);
        
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		System.out.println("11");
		
//		查询PF库数据
				List<CommentScore> listc=this.commentService.findAllPF();
				for(CommentScore temp:listc) {
					System.out.println(temp.getId());
			}
				System.out.println("PFF");
		//判断数据库中是否已经存在同一个用户与一个景点的评论，有返回true  没有返回false
			boolean bl=false;
			for(CommentScore temp : listc) {
				
	    		System.out.println("PPP");
		        if(temp.getSceneid() == id  &&  temp.getUseremail().equals(u.getEmail())){           	 
                	 bl=true;
		         }
	             else {
		        	 bl=false;
                 }
        	}
		

		//如果有显示已评论
		System.out.println(bl);
		if(bl == true) {
			System.out.println("该用户评论过了！");
		}
		else {//如果没有用户在该地点评论则保存评分到数据库
         System.out.println("hhhh");
          //添加数据评分到数据库
         String pf=request.getParameter("PF");
         CommentScore cs=new CommentScore();
         cs.setPingfen(pf);
         cs.setUsername(u.getUsername());
         cs.setName(s.getSname());
         cs.setUseremail(u.getEmail());
         System.out.println(id);
         cs.setSceneid(id);
         this.commentService.save(cs);	
		}
		return "Detilstest";
}
}