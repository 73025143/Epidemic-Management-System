package com.dao;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.net.ssl.HttpsURLConnection;

public class Covid {
	private String result[][];
	private  String httpRequset(String requesturl) throws IOException {
        StringBuffer buffer = null;
        BufferedReader bufferedReader = null;
        InputStreamReader inputStreamReader = null;
        InputStream inputStream = null;
        HttpsURLConnection httpsURLConnection = null;
        try {
            URL url = new URL(requesturl);
            httpsURLConnection = (HttpsURLConnection) url.openConnection();
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setRequestMethod("GET");
            inputStream = httpsURLConnection.getInputStream();
            inputStreamReader = new InputStreamReader(inputStream, "utf-8");
            bufferedReader = new BufferedReader(inputStreamReader);
            buffer = new StringBuffer();
            String str = null;
            while ((str = bufferedReader.readLine()) != null) {
                buffer.append(str);
            }
        } catch (MalformedURLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
 
        return buffer.toString();
    }
	
    private  String[][] getAreaStat() {
    	String arr[][]=new String[34][6];
        String url = "https://ncov.dxy.cn/ncovh5/view/pneumonia";
        String htmlResult = "";
        try {
            htmlResult = httpRequset(url);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // System.out.println(htmlResult);
 
        // 正则获取数据
        // 因为html的数据格式看着就像json格式，所以我们正则获取json
        String reg = "window.getAreaStat = (.*?)\\}(?=catch)";
        Pattern totalPattern = Pattern.compile(reg);
        Matcher totalMatcher = totalPattern.matcher(htmlResult);
 
        String result = "";
        if (totalMatcher.find()) {
            result = totalMatcher.group(1);
            result=result.replaceAll("\"", "").replaceAll("\\[\\{","");
            String[] split = result.split("provinceName:");
            for(int i=1;i<split.length;i++) {
	            String[] split2=split[i].split(",");
	            for(int j=1;j<=6;j++) {
	            	String split3[]=split2[j].split(":");
	            	arr[i-1][j-1]=split3[1];
	            	}
	            
            }
        }
        return arr;
    }

	public String[][] getResult() {
		return getAreaStat();
	}
	
	public Map<String, String[]> resultMap(){
		String arr[][]=getResult();
		
		Map<String, String[]> current = new HashMap<String, String[]>();
		for(int i=0;i<arr.length;i++) {
			    current.put(arr[i][0], arr[i]);
			}
		return current;
	}



}
