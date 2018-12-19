package com.xingtu.photo.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Photo;
import com.xingtu.entity.Users;
import com.xingtu.photo.service.PhotoService;

@Controller
@RequestMapping("/photo")
public class PhotoController {
	@Resource
	private PhotoService ps;
	@RequestMapping(value="/up",method=RequestMethod.POST)
	public String upPhoto(@RequestParam(value="files")MultipartFile []files,HttpServletRequest request,HttpSession session) {
		String path= session.getServletContext().getRealPath("/");
		Users u = (Users)session.getAttribute("user");
		ps.upPhoto(files, path, u);
		List<Photo> photos = ps.findphoto(u);
		request.setAttribute("photos", photos);
		return "photo";
	}
	@RequestMapping(value="/findallphoto",method=RequestMethod.GET)
	public String openPhoto(HttpServletRequest request,HttpSession session) {
		Users u = (Users)session.getAttribute("user");
		List<Photo> photos = ps.findphoto(u);
		request.setAttribute("photos", photos);
		return "photo";
	}
}