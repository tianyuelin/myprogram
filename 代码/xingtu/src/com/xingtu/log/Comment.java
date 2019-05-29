package com.xingtu.log;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
/**
 * 关于评分评论的类
 * @author lenovo
 *
 */
public class Comment {
	  private static Logger log = LoggerFactory.getLogger(Comment.class);
		public void logsth(String email,int sceneid,float score) {
			log.info(email+"::"+sceneid+"::"+score);
		}
}
