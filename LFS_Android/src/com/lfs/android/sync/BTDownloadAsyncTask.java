package com.lfs.android.sync;

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

import android.os.AsyncTask;
import android.os.Environment;

import com.lfs.android.util.LogUtils;

public class BTDownloadAsyncTask extends AsyncTask<String, Long, String> {
	private Listener listener;
	public BTDownloadAsyncTask(Listener listener){
		this.listener = listener;
	}
	@Override
	protected String doInBackground(String... params) {
		String name = params[0];
		String url = params[1];
		String save_path = Environment.getExternalStorageDirectory().toString()+ "/laifeisi/torrent/";
		long file_length=0;
		long curr_length=0;
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
			file_length = resultEntity.getContentLength();
			InputStream is = resultEntity.getContent();
			File folder = new File(save_path);
			if (!folder.exists() || !folder.isDirectory()) {
				folder.mkdirs();
			}
			File file = new File(save_path + name + ".torrent");
			FileOutputStream fos = new FileOutputStream(file);
			byte buf[] = new byte[1024];
			int j = 0;
			while ((j = is.read(buf)) != -1) {
				fos.write(buf, 0, j);
				this.publishProgress(curr_length,file_length);
			}
			fos.close();
			response.close();
			httpclient.close();
		} catch (Exception e) {
			e.printStackTrace();
			LogUtils.e("file download error:", e);
		}
		return save_path+name+".torrent";
	}
  @Override
  protected void onProgressUpdate(Long... progress) {
  	listener.progress(progress[0],progress[1]);
  }
  @Override  
  protected void onPostExecute(String result) {  
  	listener.callback(result);
  }
  public interface Listener {  
      public void callback(String fileName); 
      public void progress(long current,long total ); 
  }
}   