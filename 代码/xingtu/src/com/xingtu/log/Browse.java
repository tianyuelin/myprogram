package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Browse {
	private static Logger log = LoggerFactory.getLogger(Browse.class);
	public void logsth(String email,int sceneid,String time) {
		log.debug("logdemo1==debug");
		log.info("logdemo1==info");
	}
}
