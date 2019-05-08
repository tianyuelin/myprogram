package com.xingtu.log;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Collectlog {
    private static Logger log = LoggerFactory.getLogger(Collectlog.class);
	public void logsth(String email,int sceneid,String time) {
		log.info(email+"::"+sceneid+"::"+time);
	}
}
