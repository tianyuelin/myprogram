package com.xingtu.scene.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.entity.Scene;
import com.xingtu.entity.SceneImgs;
import com.xingtu.scene.dao.SceneDao;

@Service
@Transactional(readOnly=true)
public class SceneService {
	@Resource
	private SceneDao sd;
	public Scene findScene(int id) {
		System.out.println("service"+sd.findSceneById(id).getTicketPrice());
		return sd.findSceneById(id);
	}
	public List<SceneImgs> findSceneimg(String name) {
		return sd.findSceneImgs(name);
	}
	public List<Scene> findAllScene(int pageNum,int pageSize){
		return sd.findAllScene(pageNum,pageSize);
	}
	public List<Scene> getSceList(){
		return sd.getSceList();
	}
	public List<Scene> getHotScene(){
		return sd.getHotScene();
	}
}
