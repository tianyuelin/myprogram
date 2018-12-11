package com.xingtu.entity;

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

@Entity
@Table(name="youjidiv")
public class StrategyDiv {
	private int id;
	private String title;
	private String context;
	private Strategy strategy;
	private List<StrategyImg> imgs;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContext() {
		return context;
	}
	public void setContext(String context) {
		this.context = context;
	}
	@ManyToOne
	@JoinColumn(name="sid")
	public Strategy getStrategy() {
		return strategy;
	}
	public void setStrategy(Strategy strategy) {
		this.strategy = strategy;
	}
	@OneToMany(mappedBy="sd",targetEntity=StrategyImg.class,
			cascade= {CascadeType.ALL})
	public List<StrategyImg> getImgs() {
		return imgs;
	}
	public void setImgs(List<StrategyImg> imgs) {
		this.imgs = imgs;
	}
	
}
