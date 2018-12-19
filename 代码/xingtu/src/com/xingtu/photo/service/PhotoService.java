package com.xingtu.photo.service;


import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Photo;
import com.xingtu.entity.Users;
import com.xingtu.photo.dao.PhotoDao;

@Service
@Transactional(readOnly=false)
public class PhotoService {
	@Resource
	private PhotoDao pd;
	public void upPhoto(MultipartFile []files,String path,Users user){
		pd.upPhoto(files, path, user);
	}
	public List<Photo> findphoto(Users u){
		return pd.findAllPhoto(u);
	}
}
