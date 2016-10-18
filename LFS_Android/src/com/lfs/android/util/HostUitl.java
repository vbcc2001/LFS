package com.lfs.android.util;

import java.net.Inet4Address;
import java.util.ArrayList;
import java.util.List;

public class HostUitl {
	private static List<Inet4Address> list = new ArrayList<Inet4Address>();
    private final static String[] domains = {
    	"www.google.com.hk",
    	"www.google.com.tw",
    	"www.l.google.com",
    	"www.google.com",
    	"mail.google.com"
    };
	public static void addHost(){
		try {
			for(String domain :domains){list.addAll(DnsUtils.resolveA(domain));}
		} catch (Exception e) {
			LogUtils.e("get host fail :", e);
		}
	}
	public static String getHost(){
		if(list.isEmpty()){
			HostUitl.addHost();
		}
		return list.get(0).getHostAddress();
	}
	public static void removeHost(){
		if(list.isEmpty()){
			HostUitl.addHost();
		}else{
			list.remove(0);
		}
	}	
}
