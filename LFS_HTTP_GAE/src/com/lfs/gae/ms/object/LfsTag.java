package com.lfs.gae.ms.object;

/*标签分类*/
public class LfsTag   {
	//唯一ID
	private String id="";
	//名字
	private String name = "";
	//分组
	private String group="";
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	
}
