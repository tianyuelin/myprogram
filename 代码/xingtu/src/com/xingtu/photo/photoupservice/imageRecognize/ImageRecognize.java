package com.xingtu.photo.photoupservice.imageRecognize;


import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
 
import org.json.JSONObject;

import com.xingtu.photo.photoupservice.com.baidu.ai.aip.utils.Base64Util;
import com.xingtu.photo.photoupservice.com.baidu.ai.aip.utils.FileUtil;
import com.xingtu.photo.photoupservice.com.baidu.ai.aip.utils.HttpUtil;

public class ImageRecognize {

public String imagerecognize(String filePath) {
	String otherHost = "https://aip.baidubce.com/rest/2.0/image-classify/v1/landmark";
	String yuan="";
	        // 本地图片路径
//	        String filePath = "F:/xingtushixunxiangmudasanxia/images/d.jpg";
	        try {
	            byte[] imgData = FileUtil.readFileByBytes(filePath);
	            //System.out.println("进入方法后的路径"+filePath);
	            //System.out.println(imgData.length);//0
	            String imgStr = Base64Util.encode(imgData);
	            //System.out.println("Base64Util的encode方法的返回值"+imgStr);
	            String params = URLEncoder.encode("image", "UTF-8") + "=" + URLEncoder.encode(imgStr, "UTF-8");
	           // System.out.println("URLEncoder.encode的返回值"+params);
	            /**
	             * 线上环境access_token有过期时间， 客户端可自行缓存，过期后重新获取。
	             */
	            String accessToken = getAuth("9k20ALC1bZqSSmVx7x64Akfz", "vZqnOQzkmweQ9hQcSycXzmZjdzef9fzX");
	            String result = HttpUtil.post(otherHost, accessToken, params);
	            //System.out.println("***********************HttpUtil的post方法的返回结果*************");
	            System.out.println(result);
	            
	            String[] result1 = result.split(":");
	            yuan=result1[result1.length-1];
	            if(yuan.length()>5) {
	            	yuan=yuan.substring(2, yuan.length()-3);
	            }else {
	            	yuan="notfind";
	            }
	            System.out.println(yuan);
	            
	        } catch (Exception e) {
	            e.printStackTrace();
	        }
		
		return yuan;
	}
 
 
	
	 public static String getAuth(String ak, String sk) {
	        // 获取token地址
	        String authHost = "https://aip.baidubce.com/oauth/2.0/token?";
	        String getAccessTokenUrl = authHost
	                // 1. grant_type为固定参数
	                + "grant_type=client_credentials"
	                // 2. 官网获取的 API Key
	                + "&client_id=" + ak
	                // 3. 官网获取的 Secret Key
	                + "&client_secret=" + sk;
	        try {
	            URL realUrl = new URL(getAccessTokenUrl);
	            // 打开和URL之间的连接
	            HttpURLConnection connection = (HttpURLConnection) realUrl.openConnection();
	            connection.setRequestMethod("GET");
	            connection.connect();
	            // 获取所有响应头字段
	            Map<String, List<String>> map = connection.getHeaderFields();
	            // 遍历所有的响应头字段
	            for (String key : map.keySet()) {
	                System.err.println(key + "--->" + map.get(key));
	            }
	            // 定义 BufferedReader输入流来读取URL的响应
	            BufferedReader in = new BufferedReader(new InputStreamReader(connection.getInputStream()));
	            String result = "";
	            String line;
	            while ((line = in.readLine()) != null) {
	                result += line;
	            }
	            /**
	             * 返回结果示例
	             */
	            System.err.println("result:" + result);
	            JSONObject jsonObject = new JSONObject(result);
	            String access_token = jsonObject.getString("access_token");
	            return access_token;
	        } catch (Exception e) {
	            System.err.printf("获取token失败！");
	            e.printStackTrace(System.err);
	        }
	        return null;
	    }


}
