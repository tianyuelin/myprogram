package com.xingtu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

/**
 * 景点评论的实体bean
 * */
@Entity
@Table(name="scenecomment")
public class Scenecomment {
	private int scommid;//评论序号
	//一个评论对应一个用户，对应外键：useremail
	private Users user;//对应的user
	//一个评论对应一个一个景点，对应外键：sceneId
	private Scene scene;//对应的景色
	private String content;//评论内容
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getScommid() {
		return scommid;
	}
	public void setScommid(int scommid) {
		this.scommid = scommid;
	}
	@ManyToOne
	@JoinColumn(name="useremail")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	@ManyToOne
	@JoinColumn(name="sceneId")
	public Scene getScene() {
		return scene;
	}
	public void setScene(Scene scene) {
		this.scene = scene;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}
