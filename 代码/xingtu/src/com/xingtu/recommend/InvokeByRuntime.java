package com.xingtu.recommend;

import java.io.DataInputStream;
import java.io.IOException;
import java.io.InputStream;

public class InvokeByRuntime {

	public static void main(String[] args) throws IOException, InterruptedException {
		// TODO Auto-generated method stub
		
	       
			String exe="python";
			String command="D:\\test.py";
			String[] cmdArr=new String[] {exe,command};
			Process process=Runtime.getRuntime().exec(cmdArr);//此处试一试直接写command
			InputStream is=process.getInputStream();
			DataInputStream dis = new DataInputStream(is);
			String str=dis.readLine();
			
			
			
			
			
			process.waitFor();
			System.out.println(str);
			
		
	}

}
