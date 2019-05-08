package com;

import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.omg.PortableInterceptor.SYSTEM_EXCEPTION;

import com.sun.org.apache.xalan.internal.xsltc.compiler.sym;

import java.util.Map.Entry;

public class ReadLog {
	public static void main(String[] args) {
		try {
            BufferedReader in = new BufferedReader(new FileReader("D:\\log\\collectlog.log"));
            String str;
            String []logs;
            int N=0;
            Map<String, Set<String>> itemUserCollection = new HashMap<>();//景点用户倒排
            Map<String, Set<String>> UseritemCollection = new HashMap<>();//景点用户倒排
            Map<String, Integer> userItemLength = new HashMap<>();//存储每一个用户对应的不同物品总数  eg: A 3
    		Set<String> items = new HashSet<>();//辅助存储物品集合
    		Map<String, Integer> userID = new HashMap<>();//辅助存储每一个用户的用户ID映射
    		Map<Integer, String> idUser = new HashMap<>();//辅助存储每一个ID对应的用户映射
            while ((str = in.readLine()) != null) {
            	logs = str.split("::");
            	//获取用户景点倒序排列
            	if(items.contains(logs[1])) {
            		itemUserCollection.get(logs[1]).add(logs[0]);
            	}else {
            		items.add(logs[1]);
            		Set<String> ids =  new HashSet<String>();
            		ids.add(logs[0]);
            		itemUserCollection.put(logs[1],ids);
            	}
            	//获取景点用户正序排列
            	if(UseritemCollection.containsKey(logs[0])) {
            		UseritemCollection.get(logs[0]).add(logs[1]);
            	}else {
            		Set<String> ids =  new HashSet<String>();
            		ids.add(logs[1]);
            		UseritemCollection.put(logs[0],ids);
            		N++;
            	}
            }
            int[][] sparseMatrix = new int[N][N];//建立用户稀疏矩阵，用于用户相似度计算【相似度矩阵】
            
            Set<Entry<String, Set<String>>> user = UseritemCollection.entrySet();
    		//迭代set集合
    		Iterator<Entry<String, Set<String>>> iterator1 = user.iterator();
    		int n=0;
    		while(iterator1.hasNext()){
    			Entry<String,Set<String>> e = iterator1.next();
    			Set<String> scenes = e.getValue();
    			String yh = e.getKey();
    			userItemLength.put(yh, scenes.size());
    			userID.put(yh, n);
    			idUser.put(n, e.getKey());
    			n++;
    		}
            
            Set<Entry<String, Set<String>>> entrySet = itemUserCollection.entrySet();
    		//迭代set集合
    		Iterator<Entry<String, Set<String>>> iterator = entrySet.iterator();
    		while(iterator.hasNext()){
    			//通过映射关系对象的方法，getKey，getValue，获取键值对
    			Set<String> commonUsers = iterator.next().getValue();
    			for (String user_u : commonUsers) {
    				for (String user_v : commonUsers) {
    					if(user_u.equals(user_v)){
    						continue;
    					}
    					sparseMatrix[userID.get(user_u)][userID.get(user_v)] += 1;//计算用户u与用户v都有正反馈的物品总数
    				}
    			}
    		}
    		String recommendUser = "74103256982@qq.com";
    		//计算用户之间的相似度【余弦相似性】
    		//sparseMatrix[recommendUserId][j]/Math.sqrt(userItemLength.get(idUser.get(recommendUserId))
    		//                       *userItemLength.get(idUser.get(j))));
    		int recommendUserId = userID.get(recommendUser);
    		List<String> similaruser = new ArrayList<String>();
    		System.out.println("与其相似的用户：");
    		for (int j = 0;j < sparseMatrix.length; j++) {
    				if(j != recommendUserId){
    					double userSimilarity = sparseMatrix[recommendUserId][j]/Math.sqrt(userItemLength.get(idUser.get(recommendUserId))*userItemLength.get(idUser.get(j)));
    					//System.out.println(idUser.get(recommendUserId)+"--"+idUser.get(j)+"相似度:"+sparseMatrix[recommendUserId][j]/Math.sqrt(userItemLength.get(idUser.get(recommendUserId))*userItemLength.get(idUser.get(j))));
    					if(userSimilarity>=0.5) {
    						similaruser.add(idUser.get(j));
    						System.out.print(idUser.get(j)+"  ");
    					}
    				}
    				
    		}
    		//计算指定用户recommendUser的物品推荐度
    		//推荐度的计算
    		//sparseMatrix[userID.get(recommendUser)][userID.get(user)]/Math.sqrt(userItemLength.get(recommendUser)
    		//*userItemLength.get(user));//推荐度计算
    		List<String> tjscene=new ArrayList<String>();
    		System.out.println("\n基于用户协调过滤得出的推荐给该用户的景点:");
    		for(String item: items){//遍历每一件物品
    			Set<String> users = itemUserCollection.get(item);//得到购买当前物品的所有用户集合
    			if(!users.contains(recommendUser)){//如果被推荐用户没有购买当前物品，则进行推荐度计算
    				double itemRecommendDegree = 0.0;
    				for(String u: users){
    					itemRecommendDegree += sparseMatrix[userID.get(recommendUser)][userID.get(u)]/Math.sqrt(userItemLength.get(recommendUser)*userItemLength.get(u));//推荐度计算
    				}
    				if(itemRecommendDegree>=0.5) {
    					tjscene.add(item);
    					System.out.print(item+" ");
    				}
    				//System.out.println("The item "+item+" for "+recommendUser +"'s recommended degree:"+itemRecommendDegree);
    			}
    		}
            in.close();
        } catch (IOException e) {
        	System.out.println(e.getClass());
        }
    }
}
