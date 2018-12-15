package com.xingtu.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="follow")
public class Followed {
	private int id;//���
	private String useremail;//�û���Email
	private String follwed_user;//��ע����Email
	private int status;//״̬��ȡ����ע/��ע
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	
	public String getFollwed_user() {
		return follwed_user;
	}
	public void setFollwed_user(String follwed_user) {
		this.follwed_user = follwed_user;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
}
