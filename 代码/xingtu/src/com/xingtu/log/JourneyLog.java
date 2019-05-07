package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class JourneyLog {

	private static Logger log = LoggerFactory.getLogger(JourneyLog.class);
	public void logsth(String email,String sceneid,String time) {
		log.info(email+"::"+sceneid+"::"+time);
	}

}
