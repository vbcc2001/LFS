package com.lfs.ms.android.activity;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.List;

import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;

import com.google.gson.reflect.TypeToken;
import com.lfs.ms.android.R;
import com.lfs.ms.android.adapter.UrlListAdapter;
import com.lfs.ms.android.object.RequestData;
import com.lfs.ms.android.object.ResponseData;
import com.lfs.ms.android.object.Url;
import com.lfs.ms.android.object.User;
import com.lfs.ms.android.sync.HttpAsyncTask;
import com.lfs.ms.android.sync.HttpAsyncTask.HttpAsyncListener;

public class UrlListFragment extends Fragment {
	ListView list_view;
	View loading_view;
	List<Url> url_list = new ArrayList<Url>();
	UrlListAdapter url_adapter =new UrlListAdapter(url_list);
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.url_fragment, container,false);
		loading_view = rootView.findViewById(R.id.loading_main);
		list_view = (ListView) rootView.findViewById(R.id.url_list);
		list_view.setAdapter(url_adapter);
		list_view.setOnItemClickListener(onItemClickListener);
		this.getUrl();
		return rootView;
	}
  public static UrlListFragment newInstance(int position) {
      UrlListFragment fragment = new UrlListFragment();
      Bundle args = new Bundle();
      args.putInt("position", position);
      fragment.setArguments(args);
      return fragment;
  }
	private void getUrl(){
    Type type = new TypeToken<ResponseData<Url>>(){}.getType();
		HttpAsyncTask<Url> httpAsyncTask =new HttpAsyncTask<Url>(urlListener,type);
		RequestData httpRequestData = new RequestData(new User(), "F010003");
		httpAsyncTask.execute(httpRequestData);
  }  
	HttpAsyncListener<Url> urlListener = new HttpAsyncListener<Url>(){
		@Override
		public void callback(ResponseData<Url> responseData) {
			loading_view.setVisibility(View.GONE);
			list_view.setVisibility(View.VISIBLE);
			url_list.addAll(0, responseData.getList());
	}};	
	OnItemClickListener onItemClickListener= new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			Intent intent = new Intent(getActivity(), InfoActivity.class);
			intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			Bundle bundle = new Bundle();
			bundle.putString("title",url_list.get(position).getTitle());
			bundle.putString("url",url_list.get(position).getUrl());
			intent.putExtras(bundle);
			getActivity().startActivity(intent);
		}
	};
}