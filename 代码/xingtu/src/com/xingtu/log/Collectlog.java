package com.xingtu.log;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Collectlog {
    private static Logger log = LoggerFactory.getLogger(Collectlog.class);
	public void logsth(String email,int sceneid) {
		Date d=new Date();
		SimpleDateFormat sdf=new SimpleDateFormat("yy-MM-dd HH-mm-ss");
		String time=sdf.format(d);
		log.debug(email+"	"+sceneid+"	"+time);
		
	}
}
