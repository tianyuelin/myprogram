package com.xingtu.strategy.dao;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.multipart.MultipartFile;

import com.xingtu.entity.Strategy;
import com.xingtu.entity.StrategyDiv;
import com.xingtu.entity.Users;

@Repository
public class StrategyDao {
	@Resource
	private SessionFactory sf;
	public Strategy saveStrategy(String []tags,String []titles,String []texts,String []addersses,String title,Users user,MultipartFile file,String path) {
		List<StrategyDiv> sds=new ArrayList<StrategyDiv>();
		Strategy s = new Strategy();
		Session session=this.sf.getCurrentSession();
		//ͷͼ���ϴ�
		if(!file.isEmpty()){//�ж��ļ��Ƿ�Ϊ��
			try {
				InputStream is=file.getInputStream();//�õ����������
				FileOutputStream fos=new FileOutputStream(
						path+"\\img\\strategy\\"
						+file.getOriginalFilename());//������ļ��ŵ��ҵ���Ŀ��ʵ·���µ�һ��upload��
				s.setImg("img//strategy//"
						+file.getOriginalFilename());
				int i=0;
				while((i=is.read())!=-1) {
					fos.write(i);
				}
				is.close();
				fos.flush();
				fos.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		String Stag ="";
		for(String tag :tags) {
			Stag=Stag+tag+",";
		}
		s.setTag(Stag);
		if(titles.length==texts.length&&texts.length==addersses.length) {
			for(String ltitle : titles) {
				StrategyDiv sd=new StrategyDiv();
				sd.setTitle(ltitle);
				sds.add(sd);
			}
			for(int i=0;i<sds.size();i++) {
				sds.get(i).setContext(texts[i]);
				sds.get(i).setAddress(addersses[i]);
			}
			s.setUser(user);
			s.setStime(new Date());
			s.setTitle(title);
			session.save(s);
			System.out.println("�������ݿ�");
			for(int i=0;i<sds.size();i++) {
				sds.get(i).setStrategy(s);
				session.save(sds.get(i));
			}
			s.setSd(sds);
			return s;
		}else {
			return null;
		}
		
	}
	//查找所有的攻略
	public List<Strategy> findAllStrategy(int pageNum,int pageSize){
		Session session = this.sf.getCurrentSession();
		Query q = session.createQuery("from Strategy");
		q.setFirstResult((pageNum-1)*pageSize);
		q.setMaxResults(pageSize);
		return q.list();
	}
	//通过id查找攻略
	public Strategy findStrategyById(int id) {
		Session session = this.sf.getCurrentSession();
		Strategy s =(Strategy)session.createQuery("from Strategy where sId="+id).uniqueResult();
		return s;
	}
	//查询出最新攻略的三个
	public List<Strategy> findTheNewStrategy(){
		Session session = this.sf.getCurrentSession();
		Query q = session.createQuery("from Strategy order by stime desc");
		q.setFirstResult(0);
		q.setMaxResults(3);
		return q.list();
	}
	//查出最火的三个攻略
	public List<Strategy> findTheHotStrategy(){
		Session session = this.sf.getCurrentSession();
		Query q = session.createQuery("from Strategy order by looktimes desc");
		q.setFirstResult(0);
		q.setMaxResults(3);
		return q.list();
	}
	//根据标签查询
	public List<Strategy> findStrategyByTag(int pageNum,int pageSize,String tag){
		Session session = this.sf.getCurrentSession();
		Query q = session.createQuery("from Strategy where tag like '%"+tag+"'%");
		q.setFirstResult((pageNum-1)*pageSize);
		q.setMaxResults(pageSize);
		return q.list();
	}
}
