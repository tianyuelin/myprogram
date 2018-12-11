package com.xingtu.entity;

import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 攻略的实体bean
 * */
@Entity
@Table(name="strategy")
public class Strategy {
	private int sId;
	//一个攻略对应一个用户，对应外键：useremail
	private Users user;
	private Date stime;//用户设定的出行时间
	private String title;//攻略标题
	private String tag;//标签
	private String img;//图片
	private List<StrategyDiv> sd;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getsId() {
		return sId;
	}
	public void setsId(int sId) {
		this.sId = sId;
	}
	@ManyToOne
	@JoinColumn(name="useremail")
	public Users getUser() {
		return user;
	}
	public void setUser(Users user) {
		this.user = user;
	}
	public Date getStime() {
		return stime;
	}
	public void setStime(Date stime) {
		this.stime = stime;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTag() {
		return tag;
	}
	public void setTag(String tag) {
		this.tag = tag;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	@OneToMany(mappedBy="strategy",targetEntity=StrategyDiv.class,
			cascade= {CascadeType.ALL})
	public List<StrategyDiv> getSd() {
		return sd;
	}
	public void setSd(List<StrategyDiv> sd) {
		this.sd = sd;
	}
	
}
