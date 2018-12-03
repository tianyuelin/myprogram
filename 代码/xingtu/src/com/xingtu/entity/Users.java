package com.xingtu.entity;

import java.util.Date;
import java.util.List;

/**
 * 用户的实体bean
 * */
public class Users {
	private String email;//邮箱
	private String username;//用户名
	private String password;//密码
	private String icon;//头像
	private String signature;//个性签名
	private String sex;//性别
	private Date birthday;//生日
	private String hobby;//爱好
	private Date registtime;//注册时间
	//一个用户可以有多个粉丝，一个人可以关注多个用户：多对多
	private List<Users> fans;//粉丝
	private List<Users> attentions;//关注
	//一个用户可以有多对攻略的个评论
	private List<StrategyComment> stc;//对攻略的评论
	//一个用户可以有多个对景点的评论
	private List<Scenecomment> scc;//对景点的评论
	//一个用户可以发布多个攻略
	private List<Strategy> st;//攻略
	//一个用户可以创建多个行程
	private List<Journey> journeys;//创建的行程
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getIcon() {
		return icon;
	}
	public void setIcon(String icon) {
		this.icon = icon;
	}
	public String getSignature() {
		return signature;
	}
	public void setSignature(String signature) {
		this.signature = signature;
	}
	public String getSex() {
		return sex;
	}
	public void setSex(String sex) {
		this.sex = sex;
	}
	public Date getBirthday() {
		return birthday;
	}
	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}
	public String getHobby() {
		return hobby;
	}
	public void setHobby(String hobby) {
		this.hobby = hobby;
	}
	public Date getRegisttime() {
		return registtime;
	}
	public void setRegisttime(Date registtime) {
		this.registtime = registtime;
	}
	public List<Users> getFans() {
		return fans;
	}
	public void setFans(List<Users> fans) {
		this.fans = fans;
	}
	public List<Users> getAttentions() {
		return attentions;
	}
	public void setAttentions(List<Users> attentions) {
		this.attentions = attentions;
	}
	public List<StrategyComment> getStc() {
		return stc;
	}
	public void setStc(List<StrategyComment> stc) {
		this.stc = stc;
	}
	public List<Scenecomment> getScc() {
		return scc;
	}
	public void setScc(List<Scenecomment> scc) {
		this.scc = scc;
	}
	public List<Strategy> getSt() {
		return st;
	}
	public void setSt(List<Strategy> st) {
		this.st = st;
	}
	public List<Journey> getJourneys() {
		return journeys;
	}
	public void setJourneys(List<Journey> journeys) {
		this.journeys = journeys;
	}
	
}
