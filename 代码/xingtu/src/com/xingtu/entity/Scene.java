package com.xingtu.entity;

import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 * 景点的实体bean
 * */
@Entity
@Table(name="scene")
public class Scene {
	private int sceneId;///景点序号
	private String sname;//名称
	private String address;//地址
	private String ticketPrice;//票价
	private float score;//评分
	private String describee;//描述
	private String route;//路线
	private String playtime;//建议游玩儿时间
	private String opentime;//开放时间
	private String city;//城市
	private String img;//代表图片
	private List<Scenecomment> sc;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getSceneId() {
		return sceneId;
	}
	public void setSceneId(int sceneId) {
		this.sceneId = sceneId;
	}
	public String getSname() {
		return sname;
	}
	public void setSname(String sname) {
		this.sname = sname;
	}
	
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	
	public String getTicketPrice() {
		return ticketPrice;
	}
	public void setTicketPrice(String ticketPrice) {
		this.ticketPrice = ticketPrice;
	}
	public String getPlaytime() {
		return playtime;
	}
	public void setPlaytime(String playtime) {
		this.playtime = playtime;
	}
	public String getOpentime() {
		return opentime;
	}
	public void setOpentime(String opentime) {
		this.opentime = opentime;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public float getScore() {
		return score;
	}
	public void setScore(float score) {
		this.score = score;
	}
	public String getDescribee() {
		return describee;
	}
	public void setDescribee(String describee) {
		this.describee = describee;
	}
	public String getRoute() {
		return route;
	}
	public void setRoute(String route) {
		this.route = route;
	}
	@OneToMany(mappedBy="scene",targetEntity=Scenecomment.class,
			cascade= {CascadeType.ALL})
	public List<Scenecomment> getSc() {
		return sc;
	}
	public void setSc(List<Scenecomment> sc) {
		this.sc = sc;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	
}
