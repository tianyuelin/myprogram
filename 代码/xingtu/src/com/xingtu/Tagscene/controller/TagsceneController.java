package com.xingtu.Tagscene.controller;

import java.util.ArrayList;
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
		List<Map<String,List<String>>> LM=this.tagsceneService.fandsand();
		this.tagsceneService.julei(LM, SS);
	}
	@RequestMapping(value="/kmeans",method=RequestMethod.GET)
	public void kmeans() {
		 ArrayList<float[]> dataSet = new ArrayList<float[]>();
//	        dataSet.add(new float[] { 1, 2, 3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3,1,2,3});
//	        dataSet.add(new float[] { 3, 3, 3 ,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3});
//	        dataSet.add(new float[] { 3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4,3, 4, 4});
//	        dataSet.add(new float[] { 5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5,5, 6, 5});
//	        dataSet.add(new float[] { 8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6,8, 9, 6});
//	        dataSet.add(new float[] { 4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4,4, 5, 4});
//	        dataSet.add(new float[] { 6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2,6, 4, 2});
//	        dataSet.add(new float[] { 3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7,3, 9, 7});
//	        dataSet.add(new float[] { 5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8,5, 9, 8});
//	        dataSet.add(new float[] { 4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10,4, 2, 10});
//	        dataSet.add(new float[] { 1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12,1, 9, 12});
//	        dataSet.add(new float[] { 7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112,7, 8, 112});
//	        dataSet.add(new float[] { 7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4,7, 8, 4});
		 	Set<String> SS=this.tagsceneService.findtag();
			List<Map<String,List<String>>> LM=this.tagsceneService.fandsand();
			List<Map<String,float[]>> data = this.tagsceneService.julei(LM, SS);
			for(Map<String,float[]> map :data ) {
				dataSet.add(map.get(map.keySet().iterator().next()));
			}
	        KMeansRun kRun =new KMeansRun(4, dataSet);
	 
	        Set<Cluster> clusterSet = kRun.run();
	        System.out.println("单次迭代运行次数："+kRun.getIterTimes());
	        for (Cluster cluster : clusterSet) {
	            System.out.println(cluster);
	        }
	}
	
}
