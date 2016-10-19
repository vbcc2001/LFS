package com.lfs.android.object;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class Info   {
    private Key key;
	private String title = "";
	private String content = "";
	private String  source  ="";
	private List<String> img = new ArrayList<String>();
	private List<String> type = new ArrayList<String>();
	private List<String> size = new ArrayList<String>();
	private List<String> download_url = new ArrayList<String>();
	private List<String> tag = new ArrayList<String>();
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
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public List<String> getImg() {
		return img;
	}
	public void setImg(List<String> img) {
		this.img = img;
	}
	public List<String> getType() {
		return type;
	}
	public void setType(List<String> type) {
		this.type = type;
	}
	public List<String> getSize() {
		return size;
	}
	public void setSize(List<String> size) {
		this.size = size;
	}
	public List<String> getDownload_url() {
		return download_url;
	}
	public void setDownload_url(List<String> download_url) {
		this.download_url = download_url;
	}
	public List<String> getTag() {
		return tag;
	}
	public void setTag(List<String> tag) {
		this.tag = tag;
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
