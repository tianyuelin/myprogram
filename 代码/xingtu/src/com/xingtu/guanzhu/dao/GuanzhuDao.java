package com.xingtu.guanzhu.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Followed;
import com.xingtu.entity.Users;

@Repository
public class GuanzhuDao {
    
	@Resource
	private SessionFactory sessionFactory;
	
	//判断是否已关注
	public Boolean IfGuanZhu(Followed follow) {//如果已关注返回true，未关注返回false
		Session session =this.sessionFactory.getCurrentSession();		
		String myemail=follow.getUseremail();//登录用户的email
		String beemail=follow.getFollwed_user();//将要关注用户的email
		Query q=session.createQuery("from Followed where useremail=?0 and follwed_user=?1");
		q.setParameter(0,myemail);
		q.setParameter(1, beemail);
		if(q.list()==null) {
			return false;
		}else {
			return true;
		}
		
		
	}
	
	
	
	//点击关注，将关注名单插入关注表
	public void InsertGuanzhu(Followed follow) { //这里是被关注人的邮箱
		Session session=this.sessionFactory.getCurrentSession();
		session.save(follow);		
	}
	
	//从关注表中取出本人关注者都有谁，有几个
	@SuppressWarnings("null")
	public List<Users> findFollows(String myemail) {
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Followed where useremail=?0");
		
		q.setParameter(0,myemail);
		
		List<Followed> fs = q.list();//关注人的集合
		
		//创建一个关注人用户信息的集合
		List<Users> usersList=new ArrayList<Users>();
		//根据上面获得的被关注人的email查找被关注人的信息
		for(Followed f : fs) {
			
			String email1=f.getFollwed_user();//获得被关注人的邮箱
			Users fellowUser=(Users)session.createQuery("from Users where email='"+email1+"'").uniqueResult();
			
			System.out.println(fellowUser+"看看第三处是否能运行");
			
			usersList.add(fellowUser);
		}
		return usersList;
	}
	
	
	//从关注表中取出本人粉丝都有谁，有几个
	@SuppressWarnings("null")
	public List<Users> findFans(String myemail) {
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Followed where follwed_user=?0");
		q.setParameter(0,myemail);
		List<Followed> fs = q.list();//粉丝的集合
		
		//创建一个粉丝的用户信息的集合
		List<Users> usersList=new ArrayList<Users>();
		//根据上面获得的被关注人的email查找被关注人的信息
		for(Followed f : fs) {
			String email1=f.getUseremail();//获得粉丝的邮箱
			Users fansUser=(Users)session.createQuery("from Users where email='"+email1+"'").uniqueResult();
			
			System.out.println(fansUser+"看看第三处是否能运行");
			
			usersList.add(fansUser);
		}
		return usersList;//获得了粉丝用户的集合
	}
	

	
}
