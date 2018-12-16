package com.xingtu.user.dao;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Repository;

import com.sun.net.httpserver.HttpContext;
import com.xingtu.entity.Md5Encode;
import com.xingtu.entity.Users;


@Repository
public class UserDao{
	
	@Resource
	private SessionFactory sessionFactory;
	
	//插入注册用户
	public Boolean getRegistPerson(Users users) throws Exception{
		String myemail=users.getEmail();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Users where email=?0");
		q.setParameter(0, myemail);
		if(q.list().size()!=0) {
		    return false;//如果数据库中存在这个邮箱，说明需要重新输入或注册
		}
		else {
			session.save(users);
			return true;
		}		
	}
	
	//验证是否存在要登录的邮箱,密码是否正确
	public boolean getLoginPerson(Users users) throws Exception{
		String password1=Md5Encode.getMD5(users.getPassword().toString().getBytes());//获得其密码的MD5码
		String myemail=users.getEmail();
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select password from Users where email=?0");
		q.setParameter(0, myemail);
		if(q.list().size()!=0 && q.list().get(0).equals(password1)) {//说明存在这个邮箱，并且密码相等	
		    return true;
		}
		else {
			return false;
		}		
	}
	
	//根据ID查找用户
	public Users findUserByEmail(String email) {
		Session session = this.sessionFactory.getCurrentSession();
		Users u = (Users)session.createQuery("from Users where email='"+email+"'").uniqueResult();
		return u;
	}
	
	
	//查找我关注的人的数量guanzhuCount
	public Long findFGCount(String email) { //email是当前用户的邮箱
		Session session =this.sessionFactory.getCurrentSession();
		Long guanzhuCount=(Long)session.createQuery("select count(*) from Followed where useremail='"+email+"'").uniqueResult();
		return guanzhuCount;
	}
	//查找我的粉丝的数量fansCount
	public Long findfansCount(String email) {
		Session session=this.sessionFactory.getCurrentSession();
		Long fansCount=(Long)session.createQuery("select count(*) from Followed where follwed_user='"+email+"'").uniqueResult();
		return fansCount;
	}
	
	
}
