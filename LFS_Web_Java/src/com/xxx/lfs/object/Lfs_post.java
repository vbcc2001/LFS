package com.xxx.lfs.object;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class Lfs_post implements Serializable {
	private static final long serialVersionUID = 1L;
	//唯一ID
	private String id="";
	//标题
	private String title = "";
	//内容
	private String content = "";
	//摘录
	private String excerpts = "";
	//分类
	private String type="";
	//作者
	private String author="";
	//发布日期
	private Date create_date=new Date();	
	//标签
	private List<String> tags = new ArrayList<String>();
	//元数据
	private Map<String,String> meta = new HashMap<String,String>();
	//状态
	private String status="";
}
