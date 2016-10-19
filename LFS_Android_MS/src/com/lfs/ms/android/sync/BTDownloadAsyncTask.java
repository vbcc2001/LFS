package com.lfs.ms.android.sync;

import android.os.AsyncTask;

import com.lfs.ms.android.util.BTDownloadUitl;

public class BTDownloadAsyncTask extends AsyncTask<String, Integer, String> {
	private DownloadAsyncListener downloadAsyncListener;
	@Override
	protected String doInBackground(String... params) {
		return new BTDownloadUitl().Post(params[0],params[1]);
	}
    @Override  
    protected void onPostExecute(String result) {  
        super.onPostExecute(result);
    	if(downloadAsyncListener!=null){
    		downloadAsyncListener.callback(result);
    	}
    }
	public BTDownloadAsyncTask(DownloadAsyncListener downloadAsyncListener){
		this.downloadAsyncListener = downloadAsyncListener;
	}
    public interface DownloadAsyncListener {  
        public void callback(String fileName);       
    }
}   