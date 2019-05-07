package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Browse {
	private static Logger log = LoggerFactory.getLogger(Browse.class);
	public void logsth(String email,int sceneid,String time) {
		System.out.println("browselogger");
		log.info(email+"::"+sceneid+"::"+time);
	}
}
