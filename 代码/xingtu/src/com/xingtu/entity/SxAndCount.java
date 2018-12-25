package com.xingtu.entity;

import java.util.Date;

public class SxAndCount {
     
	private int sxId;
	private String fromUserEm;
	private String content;
	private String toUserEm;
	private int ifRead;
	private Date sxtime;
	private int unreadCount;
	public int getUnreadCount() {
		return unreadCount;
	}
	public void setUnreadCount(int unreadCount) {
		this.unreadCount = unreadCount;
	}
	public int getSxId() {
		return sxId;
	}
	public void setSxId(int sxId) {
		this.sxId = sxId;
	}
	public String getFromUserEm() {
		return fromUserEm;
	}
	public void setFromUserEm(String fromUserEm) {
		this.fromUserEm = fromUserEm;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getToUserEm() {
		return toUserEm;
	}
	public void setToUserEm(String toUserEm) {
		this.toUserEm = toUserEm;
	}
	public int getIfRead() {
		return ifRead;
	}
	public void setIfRead(int ifRead) {
		this.ifRead = ifRead;
	}
	public Date getSxtime() {
		return sxtime;
	}
	public void setSxtime(Date sxtime) {
		this.sxtime = sxtime;
	}

}
