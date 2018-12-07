package com.xingtu.scene.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.xingtu.entity.Scene;
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
}
