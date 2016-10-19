package com.lfs.ms.android.activity;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
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
import com.lfs.ms.android.R;
import com.lfs.ms.android.adapter.InfoListAdapter;
import com.lfs.ms.android.object.Info;
import com.lfs.ms.android.object.RequestData;
import com.lfs.ms.android.object.ResponseData;
import com.lfs.ms.android.object.User;
import com.lfs.ms.android.sync.HttpAsyncTask;
import com.lfs.ms.android.sync.HttpAsyncTask.HttpAsyncListener;

public class InfoListFragment extends Fragment {
	ListView list_view;
	View loading_view;
	List<Info> info_list = new ArrayList<Info>();
	InfoListAdapter infoAdapter = new InfoListAdapter(info_list);
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container, Bundle savedInstanceState) {
		View root_view = inflater.inflate(R.layout.info_fragment, container, false);
		loading_view = root_view.findViewById(R.id.loading_main);
		list_view = (ListView) root_view.findViewById(R.id.info_list);
		list_view.setAdapter(infoAdapter);
		list_view.setOnItemClickListener(onItemClickListener);
		this.getInfo(this.getArguments());
		return root_view;
	}
	public static InfoListFragment newInstance(Bundle bundle) {
		InfoListFragment fragment = new InfoListFragment();
		fragment.setArguments(bundle);
		return fragment;
	}
	private void getInfo(Bundle bundle) {
		Type type = new TypeToken<ResponseData<Info>>() {}.getType();
		HttpAsyncTask<Info> httpAsyncTask = new HttpAsyncTask<Info>(info_listener, type);
		RequestData httpRequestData = new RequestData(new User(), "F010101");
		HashMap<String, String> agrs = new HashMap<String, String>();
		agrs.put("title", bundle.getString("title"));
		agrs.put("url","http://we.99btgc.info"+bundle.getString("url"));
		httpRequestData.setContent(agrs);
		httpAsyncTask.execute(httpRequestData);
	}
	HttpAsyncListener<Info> info_listener = new HttpAsyncListener<Info>() {
		@Override
		public void callback(ResponseData<Info> responseData) {
			loading_view.setVisibility(View.GONE);
			list_view.setVisibility(View.VISIBLE);
			info_list.addAll(0, responseData.getList());
		}
	};
	OnItemClickListener onItemClickListener = new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			// startImagePagerActivity(position);
		}
	};
}