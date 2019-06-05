package com.xingtu.Tagscene.controller;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.xingtu.Tagscene.service.TagsceneService;
import com.xingtu.entity.Page;
import com.xingtu.entity.Scene;
import com.xingtu.kmeans.Cluster;
import com.xingtu.kmeans.KMeansRun;
import com.xingtu.kmeans.Point;
import com.xingtu.scene.service.SceneService;
@Controller
@RequestMapping("/tagscene")
public class TagsceneController {
	@Resource
	private SceneService ss;
	@Resource
	private TagsceneService tagsceneService;
	@RequestMapping(value="/tag",method=RequestMethod.GET)
	public Set findtag(){
		Set<String> set=this.tagsceneService.findtag();
		System.out.println(set);
		return set;
	}
	@RequestMapping(value="/test",method=RequestMethod.GET)
	public void test() {
		System.out.println(this.tagsceneService.fandsand());
		this.tagsceneService.fandsand();
	}
	@RequestMapping(value="/julei",method=RequestMethod.GET)
	public void julei() {
		System.out.println("222");
		Set<String> SS=this.tagsceneService.findtag();
		Map<String,List<String>> LM=this.tagsceneService.fandsand();
		this.tagsceneService.julei(LM, SS);
	}
	@RequestMapping(value="/kmeans",method=RequestMethod.POST)
	public String kmeans(HttpServletRequest request,@RequestParam(value="label")String labels ,@RequestParam(value="pageNum",defaultValue="1")int pageNum,HttpSession session) {
//		 ArrayList<float[]> dataSet = new ArrayList<float[]>();
		    System.out.println(labels);
		    String [] t= labels.split(",");
		 	Set<String> SS=this.tagsceneService.findtag();
			Map<String,List<String>> LM=this.tagsceneService.fandsand();
			Map<String,float[]> data = this.tagsceneService.julei(LM, SS);
			List<String> tags = new ArrayList<String>();
			List<String> s = new ArrayList<String>(SS);
			for(String tag:t) {
				tags.add(tag);
			}
			float [] test = new float[48];
			for(int i=1;i<=SS.size();i++) {
					if(tags.contains(s.get(i-1))) {
						test[i-1]=i;
					}else {
						test[i-1]=0;
					}
			}
			data.put("test", test);
			KMeansRun kRun =new KMeansRun(8, data);
	        Set<Cluster> clusterSet = kRun.run();
	       // System.out.println("单次迭代运行次数："+kRun.getIterTimes());
	        for (Cluster cluster : clusterSet) {
	        	if(cluster.getId()==kRun.getResult()) {
	        		List<Point> points = cluster.getMembers();
	        		Set<String> names = new HashSet<String>();
	        		for(Point p : points) {
	        			names.add(p.getName());
	        		}
	        		//names是所有属于该类的地点名称！
	        		Page<Scene> p = new Page<Scene>();
	        		p.setCurrentPageNum(pageNum);
	        		p.setPageSize(8);
	        		p.setNextPageNum(pageNum+1);
	        		p.setPrePageNum(pageNum-1);
	        		List<Scene> scenes = ss.findByNames(names);
	        		p.setList(scenes);
	        		List<Scene> hotscene = ss.getHotScene();
	        		request.setAttribute("hotscene", hotscene);
	        		request.setAttribute("page", p);
	        	}
	            if(kRun.getResult()==-1) {
	            	System.out.println("自己一类");
	            }
	        }
	        return "meijing";
	        
	}
}
