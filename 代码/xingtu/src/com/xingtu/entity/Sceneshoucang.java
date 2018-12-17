package com.xingtu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
@Entity
@Table(name="sceneshoucang")
public class Sceneshoucang {
	private int id;
	private Users u;//收藏景点的人
	private Scene scene;//收藏的景点
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@ManyToOne
	@JoinColumn(name="useremail")
	public Users getU() {
		return u;
	}
	public void setU(Users u) {
		this.u = u;
	}
	@ManyToOne
	@JoinColumn(name="sceneid")
	public Scene getScene() {
		return scene;
	}
	public void setScene(Scene scene) {
		this.scene = scene;
	}
	
}
