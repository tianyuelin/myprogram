package com.xingtu.scene.dao;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
import com.xingtu.entity.Sceneshoucang;
import com.xingtu.entity.Users;
@Repository
public class SceneDao{
	@Resource
	private SessionFactory sf;
	public Scene findSceneById(int id) {
		Session session = sf.getCurrentSession();
		Scene s = (Scene)session.createQuery("from Scene where sceneId="+id).uniqueResult();
		s.setLooktimes(s.getLooktimes()+1);
		Query q1 = session.createQuery("update Scene set looktimes="+s.getLooktimes()+"where sceneId="+id);
		q1.executeUpdate();
		String route = s.getRoute().replaceAll("\n", "<br>");
		s.setRoute(route);
		String ticketPrice = s.getTicketPrice().replaceAll("\\r\\n", "<br>");
		s.setTicketPrice(ticketPrice);
		//System.out.println("1"+ticketPrice);
		//System.out.println("secend:"+s.getTicketPrice());
		String opentime = s.getOpentime().replaceAll("\\r\\n", "<br>");
		s.setOpentime(opentime);
		String describee = s.getDescribee().replaceAll("\\r\\n", "<br>");
		s.setDescribee(describee);
		Query q = session.createQuery("from SceneImgs where pname='"+s.getSname()+"'");
		return s;
	}
	//根据id修改scene中的评分
	public void update(int id,float avg) {
	    float a=(float)avg;
		Session session = sf.getCurrentSession();
		Scene s = (Scene)session.createQuery("from Scene where sceneId="+id).uniqueResult();
		Query q = session.createQuery("update Scene set score="+a+"where sceneId="+id);
	    q.executeUpdate();
	}
	//查询scene中有多少记录
	public int record() {
		Session session=sf.getCurrentSession();
		Query q=session.createQuery("select count(*) from Scene sc");
		if(q.uniqueResult()!=null) {
		int a=Integer.parseInt(q.uniqueResult().toString());
		return a;
		}else {
		return 0;
		}
	}
	public List<SceneImgs> findSceneImgs(String name){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from SceneImgs where pname='"+name+"'");
		return q.list();
	}
	public List<Scene> findAllScene(int pageNum,int pageSize){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Scene where img is not null");
		q.setFirstResult((pageNum-1)*pageSize);
		q.setMaxResults(pageSize);
		return q.list();
	}
	/**
	  *  获取热门6个景点
	 * @return
	 */
	public List<Scene> getSceList(){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Scene where img is not null");
		q.setFirstResult(0);
		q.setMaxResults(6);
		return q.list();
	}
	//获取热门景点
	public List<Scene> getHotScene(){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Scene where img is not null order by score");
		q.setFirstResult(3);
		q.setMaxResults(3);
		return q.list();
	}
	//根据sceneidlist获取热门景点
	public List<Scene> getBaseItemScene(List sceneidList){
		List<Scene> hotScene=new ArrayList<Scene>();
		Session session=sf.getCurrentSession();
		for(int j=0;j<sceneidList.size();j++) {
			int currentid=(int) sceneidList.get(j); //看看此处是否有错
			Query q=session.createQuery("from Scene where sceneId=?0");
			q.setParameter(0, currentid);
			Scene scene1=(Scene) q.list().get(0);
			hotScene.add(scene1);
		}
		return hotScene;

	}
	
	
	public void addshoucang(int id,Users u) {
		Session session = sf.getCurrentSession();
		Scene scene = (Scene)session.createQuery("from Scene where sceneId="+id).uniqueResult();
		
	}
	//判断是否已收藏
	public Boolean IfShouCang(int sceneid,Users user) {//如果已关注返回true，未关注返回false
		Session session =sf.getCurrentSession();		
		String myemail=user.getEmail();//登录用户的email
		Query q=session.createQuery("from Sceneshoucang sh where sh.user.email=?0 and sh.scene.sceneId=?1");
		q.setParameter(0,myemail);
		q.setParameter(1, sceneid);
		if(q.list().size()!=0) {//说明存在这样一条数据，已收藏
			return true;
		}else {
			return false;
		}
	}
	//点击收藏，将收藏名单插入收藏表
	public Sceneshoucang InsertShoucang(int sceneid,Users user) {
		Session session=sf.getCurrentSession();
		List<Scene> scenes = new ArrayList<Scene>();
		Scene s =(Scene)session.createQuery("from Scene where sceneId="+sceneid).uniqueResult();
		s.setShoucangtimes(s.getShoucangtimes()+1);
		Query q = session.createQuery("update Scene set shoucangtimes="+s.getShoucangtimes()+"where sceneId="+sceneid);
		q.executeUpdate();
		scenes.add(s);
		Sceneshoucang ssc=new Sceneshoucang();
		ssc.setUser(user);
		ssc.setScene(s);
		session.save(ssc);
		return ssc;
		
	}
	//将收藏者删除
	public int delectShoucang(int sceneid,Users user) {
		Session session = sf.getCurrentSession();
		String myemail=user.getEmail();//登录用户的email
		Query q=session.createQuery("delete from Sceneshoucang s where s.user.email='"+myemail+"' and s.scene.sceneId='"+sceneid+"'");
		int x=q.executeUpdate();
		return x;//返回受影响的条数
	}
	//从收藏表中取出本人收藏的景点有那几个
	@SuppressWarnings("null")
	public List<Scene> findShoucangs(String myemail) {
			
		Session session=sf.getCurrentSession();
		Query q=session.createQuery("from Sceneshoucang where user.email=?0");
			
		q.setParameter(0,myemail);
			
		List<Sceneshoucang> ssc = q.list();//收藏景点的集合
			
		//创建一个收藏景点的集合
		List<Scene> SceneList=new ArrayList<Scene>();
		//根据上面获得的被收藏景点的id查找被收藏景点的信息
		for(Sceneshoucang sc : ssc) {
				
			int id=sc.getScene().getSceneId();//获取景点的id
			Scene shoucangscene=(Scene)session.createQuery("from Scene where sceneId='"+id+"'").uniqueResult();
				
			System.out.println(shoucangscene+"看看第三处是否能运行");
			SceneList.add(shoucangscene);
		}
		return SceneList;
	}
	//通过名字获取景点
	public List<Scene> findbyname(String name){
		Session session = sf.getCurrentSession();
		Query q = session.createQuery("from Scene where sname like'%"+name+"%'");
		return q.list();
	}
	//获取推荐景点
	public List<Scene> findTjScene(List<String> sceneid){
		List<Scene> scenes = new ArrayList<Scene>();
		Session session = sf.getCurrentSession();
		for(String id :sceneid) {
			Scene s = (Scene)session.createQuery("from Scene where sceneId="+id).uniqueResult();
			scenes.add(s);
		}
		//如果推荐的超过六个，取出前六个
		List<Scene> Tj = new ArrayList<Scene>();
		if(scenes.size()>6) {
			for(int i=0;i<6;i++) {
				Tj.add(scenes.get(i));
			}
			return Tj;
		}else {
			Query q = session.createQuery("from Scene where img is not null");
			q.setFirstResult(0);
			q.setMaxResults(6-scenes.size());
			for(Scene s:(List<Scene>)q.list()) {
				scenes.add(s);
			}
		}
		//如果小于6个的话
		return scenes;
	}
}
