package com.lfs.gae.ms.object;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.jdo.annotations.IdGeneratorStrategy;
import javax.jdo.annotations.PersistenceCapable;
import javax.jdo.annotations.Persistent;
import javax.jdo.annotations.PrimaryKey;

import com.google.appengine.api.datastore.Key;

/** 用户 */
@PersistenceCapable
public class LfsUser {

	//GAE中的唯一ID
	@PrimaryKey
    @Persistent(valueStrategy = IdGeneratorStrategy.IDENTITY)
    private Key key;
	//唯一ID
	@Persistent
	private String id="";
	//登录名
	@Persistent
	private String login_name="";
	//密码
	@Persistent
	private String password="";
	//昵称
	@Persistent
	private String nick_name="";
	//Email
	@Persistent
	private String email="";
	//网址
	@Persistent
	private String url="";
	//注册日期
	@Persistent
	private Date registered_date=new Date();
	//激活码
	@Persistent
	private String activation_key="";
	//用户状态
	@Persistent
	private String status="";
	//登录会话
	@Persistent
	private String session="";
	//元数据
	@Persistent
	private Map<String,String> meta = new HashMap<String,String>();
	
	public Key getKey() {
		return key;
	}
	public void setKey(Key key) {
		this.key = key;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getLogin_name() {
		return login_name;
	}
	public void setLogin_name(String login_name) {
		this.login_name = login_name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNick_name() {
		return nick_name;
	}
	public void setNick_name(String nick_name) {
		this.nick_name = nick_name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
	public Date getRegistered_date() {
		return registered_date;
	}
	public void setRegistered_date(Date registered_date) {
		this.registered_date = registered_date;
	}
	public String getActivation_key() {
		return activation_key;
	}
	public void setActivation_key(String activation_key) {
		this.activation_key = activation_key;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public String getSession() {
		return session;
	}
	public void setSession(String session) {
		this.session = session;
	}	
	public Map<String, String> getMeta() {
		return meta;
	}
	public void setMeta(Map<String, String> meta) {
		this.meta = meta;
	}
}
