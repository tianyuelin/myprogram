package com.xingtu.entity;

import java.util.Date;

public class Journey {
	private int id;//序号
	private String route;//行程路线
	private Date createtime;//创建时间
	private Date jtime;//出行时间
	//一个行程只能属于一个用户
	private Users user;//用户
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	public Date getCreatetime() {
		return createtime;
	}
	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}
	public Date getJtime() {
		return jtime;
	}
	public void setJtime(Date jtime) {
		this.jtime = jtime;
	}
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	

}
