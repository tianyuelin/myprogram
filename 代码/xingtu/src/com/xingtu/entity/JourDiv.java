package com.xingtu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="jourdiv")
public class JourDiv {
	private int myid;
	private String journame;
	private Journey journey;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getMyid() {
		return myid;
	}
	public void setMyid(int myid) {
		this.myid = myid;
	}
	public String getJourname() {
		return journame;
	}
	public void setJourname(String journame) {
		this.journame = journame;
	}
	@ManyToOne
	@JoinColumn(name="jid")
	public Journey getJourney() {
		return journey;
	}
	public void setJourney(Journey journey) {
		this.journey = journey;
	}
}
