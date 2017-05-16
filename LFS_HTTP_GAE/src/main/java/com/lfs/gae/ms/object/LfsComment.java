package com.lfs.gae.ms.object;
/**评论 */
public class LfsComment {

	//唯一ID
	private String id="";
	//文章ID
	private String post_id="";
	//评论者用户ID
	private String user_id="";
	//评论者
	private String author="";
	//评论者邮箱
	private String author_email="";
	//评论者网址
	private String author_url="";
	//评论者IP
	private String author_IP="";
	//评论时间
	private String date="";
	//评论正文
	private String content="";
	//父评论ID
	private String parent_id="";
	//状态
	private String status="";
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPost_id() {
		return post_id;
	}
	public void setPost_id(String post_id) {
		this.post_id = post_id;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getAuthor_email() {
		return author_email;
	}
	public void setAuthor_email(String author_email) {
		this.author_email = author_email;
	}
	public String getAuthor_url() {
		return author_url;
	}
	public void setAuthor_url(String author_url) {
		this.author_url = author_url;
	}
	public String getAuthor_IP() {
		return author_IP;
	}
	public void setAuthor_IP(String author_IP) {
		this.author_IP = author_IP;
	}
	public String getDate() {
		return date;
	}
	public void setDate(String date) {
		this.date = date;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getParent_id() {
		return parent_id;
	}
	public void setParent_id(String parent_id) {
		this.parent_id = parent_id;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
}
