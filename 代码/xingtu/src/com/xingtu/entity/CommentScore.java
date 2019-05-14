package com.xingtu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="commentscore")
public class CommentScore {
     private int id;
     private String username;
     private String name;
     private float pingfen;
     private String useremail;
     private int sceneid;
    @Id
 	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	public float getPingfen() {
		return pingfen;
	}
	public void setPingfen(float pingfen) {
		this.pingfen = pingfen;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public int getSceneid() {
		return sceneid;
	}
	public void setSceneid(int sceneid) {
		this.sceneid = sceneid;
	}
	
    
     
     
}
