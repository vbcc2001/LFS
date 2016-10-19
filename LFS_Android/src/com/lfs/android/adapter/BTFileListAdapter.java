package com.lfs.android.adapter;

import java.io.File;
import java.util.ArrayList;
import java.util.List;

import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.lfs.android.R;
import com.lfs.android.activity.MyApplication;
import com.lfs.android.object.BTFile;
import com.lfs.android.util.CommonUtil;

public class BTFileListAdapter extends BaseAdapter {

	private List<BTFile> list = new ArrayList<BTFile>();
	private ViewHolder holder;

	private class ViewHolder {
		
		public Button file_delete;
		public ProgressBar downloadProgress;
		public TextView downloadSize;
		public TextView downloadPrecent;
		public TextView save_path;
		public TextView file_title;
	}

	public Handler getHandler() {
		return handler;
	}

	public void setHandler(Handler handler) {
		this.handler = handler;
	}

	public BTFileListAdapter(List<BTFile> list) {
		super();
		this.list = list;
	}

	@Override
	public int getCount() {
		return list.size();
	}

	@Override
	public Object getItem(int position) {
		return list.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		View view = convertView;

		if (convertView == null) {
			view = View.inflate(MyApplication.context,R.layout.bt_file_list_item, null);
			holder = new ViewHolder();
			holder.file_delete = (Button) view.findViewById(R.id.file_delete1);
			holder.downloadProgress = (ProgressBar) view.findViewById(R.id.download_progress);
			holder.downloadSize = (TextView) view.findViewById(R.id.download_size);
			holder.downloadPrecent = (TextView) view.findViewById(R.id.download_precent);
			holder.save_path = (TextView) view.findViewById(R.id.save_path);
			holder.file_title = (TextView) view.findViewById(R.id.file_title);
			view.setTag(holder);
		} else {
			holder = (ViewHolder) view.getTag();
		}
		holder.save_path.setText(list.get(position).getSave_path());
		//holder.downloadProgress.setIndeterminate(true);
		holder.downloadPrecent.setText("0%");
		holder.downloadSize.setText("0M/0M");
		holder.downloadProgress.setProgress(50);
		holder.file_title.setText(list.get(position).getDesc());
		
		return view;
	}

	public List<BTFile> getList() {
		return list;
	}

	public void setList(List<BTFile> list) {
		this.list = list;
	}

	public static boolean open(String filePath) {
		Intent intent = new Intent(Intent.ACTION_VIEW);
		File file = new File(filePath);
		if (file != null && file.length() > 0 && file.exists() && file.isFile()) {
			intent.setDataAndType(Uri.fromFile(file),"application/x-bittorrent");
			intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
			MyApplication.context.startActivity(intent);
			return true;
		}
		return false;
	}

	// private class BTFileHandler extends Handler
	private Handler handler = new Handler(new Handler.Callback() {
		@Override
		public boolean handleMessage(Message msg) {
			if (msg.what == 0) {
				int status = (Integer) msg.obj;
				if (CommonUtil.isDownloading(status)) {
					holder.downloadProgress.setMax(0);
					holder.downloadProgress.setProgress(0);
					if (msg.arg2 < 0) {
						holder.downloadProgress.setIndeterminate(true);
						holder.downloadPrecent.setText("0%");
						holder.downloadSize.setText("0M/0M");
					} else {
						holder.downloadProgress.setIndeterminate(false);
						holder.downloadProgress.setMax(msg.arg2);
						holder.downloadProgress.setProgress(msg.arg1);
						holder.downloadPrecent.setText(CommonUtil.getDownloadPercent(msg.arg1, msg.arg2));
						holder.downloadSize.setText(CommonUtil
								.getFileSize(msg.arg1)
								+ "/"
								+ CommonUtil.getFileSize(msg.arg2));
					}
				} else {
					holder.downloadProgress.setMax(0);
					holder.downloadProgress.setProgress(0);
				}
				return true;
			} else {
				return false;
			}
		}
	});
}
