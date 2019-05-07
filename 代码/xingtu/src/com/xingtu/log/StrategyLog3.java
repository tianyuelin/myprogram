package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//收藏攻略
public class StrategyLog3 {
	private static Logger log = LoggerFactory.getLogger(StrategyLog3.class);
	public void logsth(String email,int strategyid,String time) {
		String info = email+"::"+strategyid+"::"+time;
		log.info(info);
	}
}
