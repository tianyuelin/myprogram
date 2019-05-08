package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StrategyLog {
	private static Logger log = LoggerFactory.getLogger(StrategyLog.class);
	public void logsth(String email,String [] names,String time) {
		String info = email+"::";
		if(names!=null) {
			for(String name : names) {
				info+=name;
				info+=name+" ";
			}
			info=info+"::"+time;
			log.info(info);
		}
		
	}
}
