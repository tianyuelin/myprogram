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
		//头图的上传
		if(!file.isEmpty()){//判断文件是否为空
			try {
				InputStream is=file.getInputStream();//拿到这个输入流
				FileOutputStream fos=new FileOutputStream(
						path+"\\img\\strategy\\"
						+file.getOriginalFilename());//将这个文件放到我的项目真实路径下的一个upload下
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
			System.out.println("存入数据库");
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

}
