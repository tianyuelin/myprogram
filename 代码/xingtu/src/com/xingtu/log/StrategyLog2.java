package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class StrategyLog2 {
	private static Logger log = LoggerFactory.getLogger(StrategyLog2.class);
	public void logsth(String email,int strategyid,String time) {
		String info = email+"::"+strategyid+"::"+time;
		log.info(info);
	}
}
