package com.xingtu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="julei")
public class Julei {
   private int id;
   private String scene;
   private String taglist;
   @Id
   @GeneratedValue(strategy=GenerationType.IDENTITY)
    public int getId() {
	return id;
    }
    public void setId(int id) {
	this.id = id;
    }
    public String getScene() {
	return scene;
    }
    public void setScene(String scene) {
	this.scene = scene;
    }
    public String getTaglist() {
	return taglist;
    }
    public void setTaglist(String taglist) {
	this.taglist = taglist;
    }
   
   
}
