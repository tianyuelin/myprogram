package com.xingtu.Tagscene.controller;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.annotation.Resource;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import com.xingtu.Tagscene.service.TagsceneService;
import com.xingtu.kmeans.Cluster;
import com.xingtu.kmeans.KMeansRun;
import com.xingtu.kmeans.Point;
@Controller
public class TagsceneController {
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
	@RequestMapping(value="/kmeans",method=RequestMethod.GET)
	public void kmeans() {
//		 ArrayList<float[]> dataSet = new ArrayList<float[]>();
		 	Set<String> SS=this.tagsceneService.findtag();
			Map<String,List<String>> LM=this.tagsceneService.fandsand();
			Map<String,float[]> data = this.tagsceneService.julei(LM, SS);
			List<String> tags = new ArrayList<String>();
			List<String> s = new ArrayList<String>(SS);
			tags.add("自驾");tags.add("短途周末");
			tags.add("亲子");tags.add("古镇");
			tags.add("家庭");tags.add("夏季");
			tags.add("踏春");tags.add("赏樱");
			float [] test = new float[48];
			for(int i=1;i<=SS.size();i++) {
					if(tags.contains(s.get(i-1))) {
						test[i-1]=i;
					}else {
						test[i]=0;
					}
			}
			data.put("test", test);
			KMeansRun kRun =new KMeansRun(4, data);
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
	        		System.out.println(names);
	        	}
	            if(kRun.getResult()==-1) {
	            	System.out.println("自己一类");
	            }
	        }
	}
}
