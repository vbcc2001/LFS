package com.lfs.ms.android.sync;

import java.lang.reflect.Type;

import com.lfs.ms.android.object.RequestData;
import com.lfs.ms.android.object.ResponseData;
import com.lfs.ms.android.util.NewHttpUitl;

import android.os.AsyncTask;
/**
 * 自定义基础异步任务
 */
public class NewHttpAsyncTask<E> extends AsyncTask<RequestData, Integer, ResponseData<E>> {
	private HttpAsyncListener<E> httpAsyncListener;
	private Type type = null;
	@Override
	protected ResponseData<E> doInBackground(RequestData... params) {
		return new NewHttpUitl<E>().Post(params[0],type);
	}
    @Override  
    protected void onPostExecute(ResponseData<E> result) {  
        super.onPostExecute(result);
    	if(httpAsyncListener!=null){
    		httpAsyncListener.callback(result);
    	}
    }
	public NewHttpAsyncTask(HttpAsyncListener<E> httpAsyncListener ,Type type){
		this.httpAsyncListener = httpAsyncListener;
		this.type = type;
	}
    public interface HttpAsyncListener<E> {  
        public void callback(ResponseData<E> responseData);       
    }
}   