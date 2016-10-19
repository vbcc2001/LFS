package com.lfs.android.activity;

import android.app.Fragment;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListView;

import com.lfs.android.R;
import com.lfs.android.adapter.BTFileListAdapter;

public class BTFileFragment extends Fragment {

	@Override
	public View onCreateView(LayoutInflater inflater, ViewGroup container,Bundle savedInstanceState) {
		View root_view = inflater.inflate(R.layout.bt_file_fragment, container,false);
		ListView list_view = (ListView) root_view.findViewById(R.id.bt_list);
		BTFileListAdapter adapter =new BTFileListAdapter(MyApplication.instance.bt_file_list);
		list_view.setAdapter(adapter);
		return root_view;
	}
    public static BTFileFragment newInstance(int position) {
    	BTFileFragment fragment = new BTFileFragment();
        Bundle args = new Bundle();
        args.putInt("position", position);
        fragment.setArguments(args);
        return fragment;
    }
}