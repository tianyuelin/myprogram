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
	//淇濆瓨璇勮鍒版暟鎹簱
	@RequestMapping(value="/save",method=RequestMethod.GET)
	public String save(HttpServletRequest request,HttpSession session){
		String q=request.getParameter("id");
		int id=Integer.parseInt(q);
		System.out.println(q);
		System.out.println("ee");
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		System.out.println(imgs.size());
		// 灏嗗叧娉ㄨ�咃紙鐧诲綍鐢ㄦ埛锛夋斁鍏�
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
		} else {
			// 鍒ゆ柇鏇剧粡鏄惁宸叉彃鍏ワ紝鑻ユ棤锛屽垯鎻掑叆锛岃嫢鏈夊垯杩斿洖宸插叧娉�
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {// 宸插叧娉�
				request.setAttribute("ifShoucang", true); // 濡傛灉宸插叧娉紝瀛樺叆true,浣块〉闈㈡樉绀哄凡鍏虫敞
				System.out.println(request.getAttribute("ifShoucang"));
			} else {// 鏈叧娉�
				request.setAttribute("ifShoucang", false);
				System.out.println("鏈叧娉�");
			}

		}

		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		System.out.println("11");
		//鐧诲綍鐢ㄦ埛鏀惧叆
		Users user= (Users) request.getSession().getAttribute("user");
		String comment = request.getParameter("comment");	
		System.out.println(comment);
		
		//娣诲姞璇勮鍒版暟鎹簱
		Comments ct=new Comments();
		
//		ct.setUsername("zhangsan");
		ct.setComment(comment);
		//瀛樺叆褰撳墠鐧婚檰鐢ㄦ埛
        ct.setUsername(u.getUsername());
		ct.setTime(new Date());
		
		this.commentService.save(ct);	
		
		List<Comments> list=this.commentService.findAll();
		request.setAttribute("commentslist", list);
		
		return "Detilstest";
	}
	//淇濆瓨鍦扮偣璇勫垎鍒版暟鎹簱
	@RequestMapping(value="/savePF",method=RequestMethod.GET)
	public String savepf(HttpServletRequest request,HttpSession session){
		String q=request.getParameter("id");
		int id=Integer.parseInt(q);
		System.out.println(q);
		System.out.println("ee");
		Scene s = ss.findScene(id);
		List<SceneImgs> imgs = ss.findSceneimg(ss.findScene(id).getSname());
		System.out.println(imgs.size());
		// 灏嗗叧娉ㄨ�咃紙鐧诲綍鐢ㄦ埛锛夋斁鍏�
		Users u= (Users)session.getAttribute("user");
		if (u == null) {
			request.setAttribute("ifShoucang", false);
		} else {
			// 鍒ゆ柇鏇剧粡鏄惁宸叉彃鍏ワ紝鑻ユ棤锛屽垯鎻掑叆锛岃嫢鏈夊垯杩斿洖宸插叧娉�
			Boolean b = this.ss.IfShouCang(id,u);
			if (b) {// 宸插叧娉�
				request.setAttribute("ifShoucang", true); // 濡傛灉宸插叧娉紝瀛樺叆true,浣块〉闈㈡樉绀哄凡鍏虫敞
				System.out.println(request.getAttribute("ifShoucang"));
			} else {// 鏈叧娉�
				request.setAttribute("ifShoucang", false);
				System.out.println("鏈叧娉�");
			}
		}
		List<Comments> list=this.commentService.findAll();
		request.setAttribute("commentslist", list);
        
		request.setAttribute("singlescene", s);
		request.setAttribute("imglist", imgs);
		System.out.println("11");
		//娣诲姞鏁版嵁璇勫垎鍒版暟鎹簱
		String pf=request.getParameter("PF");
		CommentScore cs=new CommentScore();
		cs.setPingfen(pf);
		cs.setUsername(u.getUsername());
		cs.setName(s.getSname());
		this.commentService.save(cs);	
		Comment comment=new Comment();
		comment.logsth(u.getEmail(), s.getSceneId(), pf);
		return "Detilstest";
}
}