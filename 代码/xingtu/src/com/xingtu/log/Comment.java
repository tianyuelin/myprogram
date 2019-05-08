package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class Comment {
	  private static Logger log = LoggerFactory.getLogger(Comment.class);
		public void logsth(String email,int sceneid,String score) {
			log.info(email+"::"+sceneid+"::"+score);
		}
}
