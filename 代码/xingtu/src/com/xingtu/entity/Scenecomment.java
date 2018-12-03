package com.xingtu.entity;
/**
 * 景点评论的实体bean
 * */
public class Scenecomment {
	private int scommid;//评论序号
	//一个评论对应一个用户，对应外键：useremail
	private Users user;//对应的user
	//一个评论对应一个一个景点，对应外键：sceneId
	private Scene scene;//对应的景色
	private String content;//评论内容
	public int getScommid() {
		return scommid;
	}
	public void setScommid(int scommid) {
		this.scommid = scommid;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
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
