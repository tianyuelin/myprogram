package com.xingtu.comment.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.CommentScore;
import com.xingtu.entity.Comments;

@Repository
public class CommentDao {
	
	@Resource
	private SessionFactory sessionFactory;
	//查询数据库commont数据
	public List<Comments> findAll(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Comments ct");		
		return q.list();
	}
	//保存数据到数据库
	public void save(Comments ct) throws Exception{
		this.sessionFactory.getCurrentSession().save(ct);	
	}
	
	//保存评分数据到数据库
	public void save(CommentScore cs)throws Exception{
		this.sessionFactory.getCurrentSession().save(cs);	
	}
	//查询commentscore数据
	public List<CommentScore> findAllPF(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from CommentScore cs");		
		return q.list();
	}
	//根据Id查询commontscore里面评分的平均值
	public float findavg(int id) {
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select avg(cs.pingfen) from CommentScore cs where cs.sceneid="+id);
		if(q.uniqueResult()!=null) {
		float avg=Float.parseFloat(q.uniqueResult().toString());
		return avg;
		}else {
        return 0;
		}
		}
		
}
