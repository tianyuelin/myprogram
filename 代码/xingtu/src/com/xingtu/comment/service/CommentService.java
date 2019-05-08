package com.xingtu.comment.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.comment.dao.CommentDao;
import com.xingtu.entity.CommentScore;
import com.xingtu.entity.Comments;

@Service
@Transactional(readOnly=false)
public class CommentService {
	@Resource
	private CommentDao commentDao;
	public List<Comments> findAll() {
		return this.commentDao.findAll();
	}
	public  List<CommentScore> findAllPF() {
		return this.commentDao.findAllPF();
		
	}
    public void save(Comments ct) {
    	try {
			this.commentDao.save(ct);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    public void save(CommentScore cs) {
    	try {
			this.commentDao.save(cs);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
    }
    
    
}
