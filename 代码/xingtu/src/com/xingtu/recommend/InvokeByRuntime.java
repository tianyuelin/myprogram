package com.xingtu.recommend;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import com.xingtu.entity.Users;

public class InvokeByRuntime {
	
	
	public List getHotSecneid(Users user) throws InterruptedException, IOException {
		
		String useremail=user.getEmail();
	    List scenelist=new ArrayList();
		String exe="python";
		String command="D:\\xingtufile\\test.py";
		String[] cmdArr=new String[] {exe,command,useremail};
		Process process=Runtime.getRuntime().exec(cmdArr);
		InputStream is=process.getInputStream();
		DataInputStream dis = new DataInputStream(is);
		//String s=dis.readLine();
		String i;
		while((i=dis.readLine())!=null) {
			System.out.println(i);
			//System.out.println("测试："+i.substring(0,i.indexOf(" 	 ")));//截取字符串中空格前的值，此处报错
			String scene=i.substring(0,i.indexOf(" 	 "));
			int sceneid=Integer.parseInt(scene);
			scenelist.add(sceneid);
		}
		for(int j=0;j<scenelist.size();j++) {
			System.out.println(scenelist.get(j));
		}
		return scenelist;
		
}

}

//	public static void main(String[] args) throws IOException, InterruptedException {
//		// TODO Auto-generated method stub
//		    List scenelist=new ArrayList();
//			String exe="python";
//			String command="D:\\test.py";
//			String username="1098484059@qq.com"; //44165416
//			String[] cmdArr=new String[] {exe,command,username};
//			Process process=Runtime.getRuntime().exec(cmdArr);
//			InputStream is=process.getInputStream();
//			DataInputStream dis = new DataInputStream(is);
//			//String s=dis.readLine();
//			String i;
//			while((i=dis.readLine())!=null) {
//				System.out.println(i);
//				//System.out.println("测试："+i.substring(0,i.indexOf(" 	 ")));//截取字符串中空格前的值，此处报错
//				String scene=i.substring(0,i.indexOf(" 	 "));
//				int sceneid=Integer.parseInt(scene);
//				scenelist.add(sceneid);
//			}
//			for(int j=0;j<scenelist.size();j++) {
//				System.out.println(scenelist.get(j));
//			}
//			process.waitFor(); //如果此处输出为0，说明执行成功
//			
		
//	}
//
//}
