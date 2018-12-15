package com.xingtu.guanzhu.dao;

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
	
	//点击关注，将关注名单插入关注表
	public void InsertGuanzhu(Followed follow) { //这里是被关注人的邮箱
		Session session=this.sessionFactory.getCurrentSession();
		session.save(follow);		
	}
	
	
	
	//从关注表中取出本人关注者都有谁，有几个
	public List<Users> findFollows(String myemail) {
		
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Followed where useremail=?0");
		
		q.setParameter(0,myemail);
		System.out.println(myemail);
		
		List<Followed> fs  = q.list();//关注人的集合
		
		//创建一个关注人用户信息的集合
		List<Users> usersList=null;
		//根据上面获得的被关注人的email查找被关注人的信息
		for(Followed f : fs) {
			System.out.println(f.getUseremail()+"看看这里是否能运行");
			Query q1=session.createQuery("from Users where follwed_user=?0");
			Users fellowUser=(Users)q1.list();
			q1.setParameter(0,f.getUseremail());
			System.out.println(f.getUseremail());
			usersList.add(fellowUser);
		}
		return usersList;
	}
	
	
	//从关注表中取出本人粉丝都有谁，有几个

	
}
