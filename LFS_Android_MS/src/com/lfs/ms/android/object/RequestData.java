package com.lfs.ms.android.object;

import java.util.HashMap;
import java.util.Map;

public class RequestData {
	User user = new User();
	String function = "";
	Map<String,String> content = new HashMap<String,String>(); //参数信息	
	public RequestData(){
	}
	public RequestData(User user,String function){
		this.user = user;
		this.function = function;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getFunction() {
		return function;
	}
	public void setFunction(String function) {
		this.function = function;
	}
	public Map<String, String> getContent() {
		return content;
	}
	public void setContent(Map<String, String> content) {
		this.content = content;
	}
	
}
