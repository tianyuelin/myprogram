package com.xingtu.sixin.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Sx;

@Repository
public class SxDao {
	@Resource
    private SessionFactory sessionFactory;
	
	//查出两者的聊天记录（此时没有用户）
	public  List<Sx> InsertLTContent(Sx sx) {
		//插入数据
		Session session=this.sessionFactory.getCurrentSession();
		session.save(sx);
		String myemail=sx.getFromUserEm();
		String otheremail=sx.getToUserEm();
		System.out.println(otheremail);
		//查出数据
		Query q=session.createQuery("from Sx where fromUserEm in(?0,?1) and toUserEm in(?0,?1) order by sxId desc");
		q.setParameter(0, myemail);
		q.setParameter(1, otheremail);
	    return q.list();
	}
	
	//查出两者的聊天记录，此时有用户
	public List<Sx> getAllContent(String myemail,String otheremail){
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("from Sx where fromUserEm in(?0,?1) and toUserEm in(?0,?1) order by sxId desc");
		q.setParameter(0, myemail);
		q.setParameter(1, otheremail);
		return q.list();
	}
	
	
	
}
