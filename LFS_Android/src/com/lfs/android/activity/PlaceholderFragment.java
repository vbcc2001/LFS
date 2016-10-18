package com.lfs.android.activity;

import java.lang.reflect.Type;
import java.util.List;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

import com.google.gson.reflect.TypeToken;
import com.lfs.android.R;
import com.lfs.android.activity.HttpAsyncTask.HttpAsyncListener;
import com.lfs.android.adapter.InfoAdapter;
import com.lfs.android.object.Info;
import com.lfs.android.object.RequestData;
import com.lfs.android.object.ResponseData;
import com.lfs.android.object.User;

public class PlaceholderFragment extends Fragment {
	View rootView;
	Type type = new TypeToken<ResponseData<Info>>(){}.getType();
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
		rootView = inflater.inflate(R.layout.fragment_main, container,false);
		HttpAsyncTask<Info> httpAsyncTask =new HttpAsyncTask<Info>(httpAsyncListener,type);
		RequestData httpRequestData = new RequestData(new User(), "F000002");
		httpAsyncTask.execute(httpRequestData);
		return rootView;
	}
	HttpAsyncListener<Info> httpAsyncListener = new HttpAsyncListener<Info>(){
		@Override
		public void callback(ResponseData<Info> responseData) {
			List<Info>list_info =  responseData.getList();
			ListView listView = (ListView) rootView.findViewById(android.R.id.list);
			listView.setAdapter(new InfoAdapter(list_info));
			listView.setOnItemClickListener(new OnItemClickListener() {
				@Override
				public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
					//startImagePagerActivity(position);
				}
			});
	}};	
}