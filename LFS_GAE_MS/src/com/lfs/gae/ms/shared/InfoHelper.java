package com.lfs.gae.ms.shared;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import com.lfs.gae.ms.object.Info;
import com.lfs.gae.ms.object.Url;

public class InfoHelper{

	public String getContent(String path) throws IOException {
		String content = "";
		try {
			URL url = new URL(path);
			BufferedReader reader = new BufferedReader(new InputStreamReader(url.openStream(), "GBK"));
			String line;
			while ((line = reader.readLine()) != null) {
				content += line + "\r\n";
			}
			reader.close();
		} catch (Exception e) {
			content = e.getMessage();
			System.out.println(content);

		}
		return content;
	}
	public List<String> getTags(String title) {
		String[] words = new String[] { "欧美", "无码","有码", "亚洲", "日本", "无碼","有碼", "nike", "騎兵", "灣搭拉咩拉", "東京熱","东京热" };
		List<String> tags = new ArrayList<String>();
		tags.add("bt");
		tags.add("涩工厂");
		for (String word : words) {
			if (title.indexOf(word) >= 0) {
				tags.add(word);
			}
		}
		return tags;
	}
	public  List<Url> changToUrlList(String content,String source) throws IOException {
		List<Url> url_list = new ArrayList<Url>();
    Pattern pn_1 = Pattern.compile("<a href=\"(.+?)<br />");
    Pattern pn_2 = Pattern.compile("<a href=\"(.+?)\"");
    Pattern pn_3 = Pattern.compile("blank >(.+?)</a>");        
    Matcher ma_1 = pn_1.matcher(content);
    while(ma_1.find()){
	    Matcher ma_2 = pn_2.matcher(ma_1.group());
	    Matcher ma_3 = pn_3.matcher(ma_1.group());
	    Url url = new Url(); 
	    url.setSource(source);
    	if(ma_2.find()){
    		url.setUrl(ma_2.group().replace("<a href=\"", "").replace("\"", ""));
    	}
    	if(ma_3.find()){
    		url.setTitle(ma_3.group().replace("blank >", "").replace("</a>", ""));
    	}
    	url_list.add(url);
    }
		return url_list;
	}
	public List<Info> changToInfo(String content, String url, List<String> tags) throws IOException {
		List<Info> info_list = new ArrayList<Info>();
		content = content.substring(content.indexOf("<div id=\"content\">") + 18);
		//System.out.println(content);
		System.out.println(content.indexOf("</div>"));
		content = content.substring(0, content.indexOf("</div>"));
		String con[] = content.split("<br />\r\n<br />");
		for (String c : con) {
			Info info = new Info();
			info.setSource(url);
			info.setTag(tags);
			String[] d = c.split("<br />");
			for (int i = 0; i < d.length; i++) {
				if (i == 0) {
					info.setTitle(d[i]);
				} else if (d[i].indexOf("<IMG border=\"0\"") >= 0) {
					Pattern pattern = Pattern.compile("src=\"(.+?)\" />");
					Matcher matcher = pattern.matcher(d[i]);
					while (matcher.find()) {
						String img = matcher.group().replace("src=\"", "").replace("\" />", "");
						info.getImg().add(img);
					}
				} else if (d[i].indexOf("<a href=\"") >= 0) {
					Pattern pattern = Pattern.compile("href=\"(.+?)\"");
					Matcher matcher = pattern.matcher(d[i]);
					while (matcher.find()) {
						String download_url = matcher.group().replace("href=\"", "").replace("\"", "");
						info.getDownload_url().add(download_url);
					}
				} else if (d[i - 1].indexOf("<IMG border=\"0\"") >= 0) {
					info.getType().add(d[i]);
					String e[] = d[i].split(" ");
					info.getSize().add(e[e.length - 1]);
				} else {
					info.setContent(info.getContent() + d[i]);
				}
			}
			info.setContent(info.getContent().replaceAll("(\r\n|\r|\n|\n\r)", "\n"));
			info_list.add(info);
		}
		return info_list;
	}
}