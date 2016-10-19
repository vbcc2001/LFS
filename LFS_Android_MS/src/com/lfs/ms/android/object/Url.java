package com.lfs.ms.android.object;

import java.util.Date;

public class Url   {
    private Key key;
	private String title = "";
	private String url = "";
	private String  source  ="";
	private Date  create_date = new Date();
	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public Date getCreate_date() {
		return create_date;
	}
	public void setCreate_date(Date create_date) {
		this.create_date = create_date;
	}	
}
