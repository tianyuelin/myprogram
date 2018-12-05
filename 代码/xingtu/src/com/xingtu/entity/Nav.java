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
@Table(name="navlist")
public class Nav {
	private int navId; 
	private String Name;
	private List<Nav> childNav;
	private Nav ParentNav;
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getNavId() {
		return navId;
	}
	public void setNavId(int navId) {
		this.navId = navId;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	@OneToMany(mappedBy="ParentNav",targetEntity=Nav.class,
			cascade= {CascadeType.ALL})
	public List<Nav> getChildNav() {
		return childNav;
	}
	public void setChildNav(List<Nav> childNav) {
		this.childNav = childNav;
	}
	@ManyToOne
	@JoinColumn(name="parentId")
	public Nav getParentNav() {
		return ParentNav;
	}
	public void setParentNav(Nav parentNav) {
		ParentNav = parentNav;
	}
	
	
}
