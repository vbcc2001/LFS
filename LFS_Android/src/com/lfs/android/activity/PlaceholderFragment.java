package com.lfs.android.activity;

import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import android.annotation.SuppressLint;
import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

import com.google.gson.reflect.TypeToken;
import com.lfs.android.R;
import com.lfs.android.adapter.InfoListAdapter;
import com.lfs.android.object.Info;
import com.lfs.android.object.RequestData;
import com.lfs.android.object.ResponseData;
import com.lfs.android.object.User;
import com.lfs.android.sync.HttpAsyncTask;
import com.lfs.android.sync.HttpAsyncTask.HttpAsyncListener;
import com.lfs.android.view.DropDownListView;
import com.lfs.android.view.DropDownListView.OnDropDownListener;
public class PlaceholderFragment extends Fragment {
	DropDownListView listView;
	View loadingView;
	List<Info> list_info = new ArrayList<Info>();
	InfoListAdapter infoAdapter =new InfoListAdapter(list_info);
	SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.S", Locale.getDefault());
	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
		View rootView = inflater.inflate(R.layout.fragment_main, container,false);
		loadingView = rootView.findViewById(R.id.loading_main);
		listView = (DropDownListView) rootView.findViewById(R.id.info_list);
		listView.setAdapter(infoAdapter);
		listView.setOnItemClickListener(onItemClickListener);
		listView.setOnDropDownListener(onDropDownListener);
		listView.setOnBottomListener(onBottomListener);
		this.getNewInfo();
		return rootView;
	}
    public static PlaceholderFragment newInstance(int sectionNumber) {
        PlaceholderFragment fragment = new PlaceholderFragment();
        Bundle args = new Bundle();
        args.putInt("section_number", sectionNumber);
        fragment.setArguments(args);
        return fragment;
    }
    @SuppressLint("SimpleDateFormat")
	private void getNewInfo(){
    	Type type = new TypeToken<ResponseData<Info>>(){}.getType();
		HttpAsyncTask<Info> httpAsyncTask =new HttpAsyncTask<Info>(newInfoListener,type);
		RequestData httpRequestData = new RequestData(new User(), "F000002");
		HashMap<String,String> agrs = new HashMap<String,String>();
		if(list_info!=null && list_info.size()>0){
			agrs.put("create_date", format.format(list_info.get(0).getCreate_date()));
			agrs.put("id", list_info.get(0).getKey().getId());
		}
		httpRequestData.setContent(agrs);
		httpAsyncTask.execute(httpRequestData);
    }
    private void getOldInfo(){
    	Type type = new TypeToken<ResponseData<Info>>(){}.getType();
		HttpAsyncTask<Info> httpAsyncTask =new HttpAsyncTask<Info>(oldInfoListener,type);
		RequestData httpRequestData = new RequestData(new User(), "F000003");
		HashMap<String,String> agrs = new HashMap<String,String>();
		if(list_info!=null && list_info.size()>0){
			agrs.put("create_date", format.format(list_info.get(list_info.size()-1).getCreate_date()));
			agrs.put("id", list_info.get(list_info.size()-1).getKey().getId());
		}
		httpRequestData.setContent(agrs);
		httpAsyncTask.execute(httpRequestData);
    }    
	HttpAsyncListener<Info> newInfoListener = new HttpAsyncListener<Info>(){
		@Override
		public void callback(ResponseData<Info> responseData) {
			loadingView.setVisibility(View.GONE);
			listView.setVisibility(View.VISIBLE);
			list_info.addAll(0, responseData.getList());
			SimpleDateFormat format = new SimpleDateFormat("MM-dd HH:mm", Locale.getDefault());
			listView.onDropDownComplete("update:"+format.format(new Date()));
	}};	
	HttpAsyncListener<Info> oldInfoListener = new HttpAsyncListener<Info>(){
		@Override
		public void callback(ResponseData<Info> responseData) {
			list_info.addAll(responseData.getList());
			listView.onBottomComplete();
	}};	
	OnItemClickListener onItemClickListener= new OnItemClickListener() {
		@Override
		public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
			//startImagePagerActivity(position);
		}
	};
	OnDropDownListener onDropDownListener=new OnDropDownListener(){
		@Override
		public void onDropDown() {
			getNewInfo(); 
		}
	};
	OnClickListener onBottomListener=new OnClickListener(){
		@Override
		public void onClick(View arg0) {
			getOldInfo();
		}
	};	
}