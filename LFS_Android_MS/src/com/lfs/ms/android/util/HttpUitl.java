package com.lfs.ms.android.util;

import java.io.IOException;
import java.lang.reflect.Type;
import java.security.cert.X509Certificate;
import java.util.LinkedList;

import javax.net.ssl.SSLException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;

import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.conn.ssl.X509HostnameVerifier;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.lfs.ms.android.object.RequestData;
import com.lfs.ms.android.object.ResponseData;

public class HttpUitl<E> {

	/**
	 * 发送Post请求 
	 */
	public  ResponseData<E> Post(RequestData requestData,Type response_type)  {

		ResponseData<E> responseData = new ResponseData<E>();
		HttpClient client=new DefaultHttpClient();
			try {		
				//创建SSLSocketFactory
				SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory() ;
				//HOSTNAME验证
		    	X509HostnameVerifier hostnameVerifier = new X509HostnameVerifier() {
		    		public boolean verify(String arg0, SSLSession arg1) { return true; }
		    		public void verify(String arg0, SSLSocket arg1) throws IOException {}
		    		public void verify(String arg0, String[] arg1, String[] arg2) throws SSLException {}
		    		public void verify(String arg0, X509Certificate arg1) throws SSLException {}
		    	};        
				socketFactory.setHostnameVerifier(hostnameVerifier);
				//通过SchemeRegistry将SSLSocketFactory注册到我们的HttpClient上
				client.getConnectionManager().getSchemeRegistry().register(new Scheme("https", socketFactory, 443));	
				//要发送的参数列表,每个参数对用NameValuePair表示
				LinkedList<NameValuePair> pairs=new LinkedList<NameValuePair>();
				BasicNameValuePair pair=new BasicNameValuePair("jsonContent", new Gson().toJson(requestData));
				System.out.println(new Gson().toJson(requestData));
				//把所有参数以NameValuePair对象放到参数列表中
				pairs.add(pair);
				//将参数编码
				HttpEntity entity = new UrlEncodedFormEntity(pairs,"UTF-8");
				//10 times
				for(int i=0;i<10;i++){
					//创建要请求的目标服务器对象
	                HttpPost post = new HttpPost("https://"+HostUitl.getHost()+":443/lfs/FunctionServlet?function=F000002");
	                post.setHeader("host", "1-dot-xxxman-ms.appspot.com");
					post.setEntity(entity);
					HttpResponse response=client.execute(post);
					if (response.getStatusLine().getStatusCode()==200) {
						HttpEntity resultEntity=response.getEntity();
						String content=EntityUtils.toString(resultEntity,"UTF-8");
						Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss.S").create();  
						responseData = gson.fromJson(content, response_type);
						break;
					}else{
						responseData.getError().setNum(response.getStatusLine().getStatusCode()+"");
						responseData.getError().setMsg("http request error:"+response.getStatusLine().getReasonPhrase());
					}
				}
			} catch (Exception e) {
				responseData.getError().setNum("-1");
				responseData.getError().setMsg("http request error:"+e.getMessage());
				HostUitl.removeHost();
				LogUtils.e("http request error:", e);
			}
		return responseData;
	}
}
