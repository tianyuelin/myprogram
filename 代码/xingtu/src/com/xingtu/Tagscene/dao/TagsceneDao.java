package com.xingtu.Tagscene.dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.xingtu.entity.Julei;

@Repository
public class TagsceneDao {
	@Resource
	private SessionFactory sessionFactory;
	public Set<String> findAll(){
		Session session=this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select ts.tag from Tag ts");	
		List<String> list =q.list();
		List<List<String>> lists = new ArrayList<List<String>>();
		Set<String> tags = new HashSet<String>();
		for(String str:list) {
			String[] s = str.split(" ");
			lists.add(Arrays.asList(s));
		}
		for(int i=0;i<lists.size();i++) {
			for(int j =0;j<lists.get(i).size();j++) {
				tags.add(lists.get(i).get(j));
			}
		}
		return tags;
	}
	public List<Map<String,List<String>>> sandt(){
		List<Map<String,List<String>>> sandt = new ArrayList<Map<String,List<String>>>();
		Session session = this.sessionFactory.getCurrentSession();
		Query q=session.createQuery("select ts.tag,ts.didian from Tag ts");
		List<Object[]>olist = q.list();
		for(Object[] o : olist) {
			List<String> add = new ArrayList<String>();
			String []temp=((String)o[1]).split("：");
			String []address =temp[1].split(">");//有重复名称
			String [] tags = ((String)o[0]).split(" ");
			for(String name : address) {
				Map<String,List<String>> map = new HashMap<String,List<String>>();
				map.put(name, Arrays.asList(tags));
				sandt.add(map);
			}
		}
		return sandt;
	}
	public List<Map<String,float[]>> julei(List<Map<String,List<String>>> LM,Set<String> SS) {
		List<Map<String,float[]>> data = new ArrayList<Map<String,float[]>>();
		//将聚类数据保存到list里
		 System.out.println("322");
//		List<Julei> list1=new ArrayList<Julei>();
		for(int i=0;i<LM.size();i++) {
	     System.out.println(LM.get(i));
		 Map<String,List<String>> MS=LM.get(i);
         //将需要聚类的list转换为数值型。
         
         List<String> list3=new ArrayList<String>(SS);
         System.out.println(list3);
//         for(int w=0;w<list3.size();w++) {
        	 System.out.println(list3.size());
        	 System.out.println("55");
        	 System.out.println(MS.keySet().iterator().next());
        	List<String> list2=MS.get(MS.keySet().iterator().next());
        	System.out.println(list2);
        	System.out.println("556");
        	//List<String> list=new ArrayList<String>();
        	float [] num = new float[48];
//        	for(int m=0;m<list3.size();m++) {
//               	 num[m]=0;
//             for(int q=0;q<list2.size();q++) {
//            	    System.out.println(list2.get(q));
//        	 if(list2.get(q).equals(list3.get(m))){
//        		 list.remove(m);
//        		 list.add("1");
//        	 }
//        	 }
//        	}
        	for(int m =0;m<list3.size();m++) {
        		if(list2.contains(list3.get(m))) {
        			num[m]=m;
        		}else {
        			num[m]=0;
        		}
        	}
        	System.out.println(num);
        	Map<String,float[]> resultdata = new HashMap<String,float[]>();
        	resultdata.put(LM.get(i).keySet().iterator().next(),num );
        	data.add(resultdata);
        	//        	String list = "";
//        	for(float a :num) {
//        		list=list+a+",";
//        	}
        	 //存到聚类表
//        	String m=new String();
//        	System.out.println(m.join(",",list));
//        	System.out.println("68");
//        	m=m.join(",",list);
//        	System.out.println(m);
//            Julei jl=new Julei();
//            
//            System.out.println(MS.keySet().iterator().next());
//            jl.setScene(MS.keySet().iterator().next());
//            jl.setTaglist(m);
   		 
            //this.sessionFactory.getCurrentSession().save(jl);
//         }
         
         
         
        
		}	
			
			return data;
	}
}

















