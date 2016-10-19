package com.lfs.ms.android.util;

import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.LinkedList;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.message.BasicNameValuePair;

import android.os.Environment;

public class BTDownloadUitl {
	public String Post(String name, String url) {
		String fileName = "";
		String path = Environment.getExternalStorageDirectory().toString()+ "/laifeisi/torrent/";
		try {
			CloseableHttpClient httpclient = HttpClients.createDefault();
			LinkedList<NameValuePair> pairs = new LinkedList<NameValuePair>();
			pairs.add(new BasicNameValuePair("type", "torrent"));
			pairs.add(new BasicNameValuePair("id", name));
			pairs.add(new BasicNameValuePair("name", name));
			HttpEntity entity = new UrlEncodedFormEntity(pairs, "UTF-8");
			HttpPost post = new HttpPost(url);
			post.setEntity(entity);
			CloseableHttpResponse response = httpclient.execute(post);
			HttpEntity resultEntity = response.getEntity();
			InputStream is = resultEntity.getContent();
			File file = new File(path);
			if (!file.exists()) {
				file.mkdir();
			}
			file = new File(path + name + ".torrent");
			FileOutputStream fos = new FileOutputStream(file);
			byte buf[] = new byte[1024];
			int j = 0;
			while ((j = is.read(buf)) != -1) {
				System.out.println("-----------------------------------" + j);
				fos.write(buf, 0, j);
			}
			fos.close();
			response.close();
			httpclient.close();
			fileName = path + name + ".torrent";
		} catch (Exception e) {
			e.printStackTrace();
			LogUtils.e("file download error:", e);
		}
		return fileName;
	}
}
