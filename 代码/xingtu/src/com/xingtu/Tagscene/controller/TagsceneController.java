package com.xingtu.Tagscene.controller;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
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
//			Set<String> keys= new HashSet<String>();
//			keys = data.keySet();
//			Iterator<String> iter= keys.iterator();
//			while(iter.hasNext()) {
//				String name = iter.next();
//				dataSet.add(data.get(name));
//			}
//	        KMeansRun kRun =new KMeansRun(4, dataSet);
			System.out.println("controller中");
			System.out.println(data.size());
			KMeansRun kRun =new KMeansRun(4, data);
	        Set<Cluster> clusterSet = kRun.run();
	        System.out.println("单次迭代运行次数："+kRun.getIterTimes());
	        for (Cluster cluster : clusterSet) {
	            System.out.println(cluster);
	        }
	}
}
