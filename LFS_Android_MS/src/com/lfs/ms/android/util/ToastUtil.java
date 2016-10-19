package com.lfs.ms.android.util;

import android.widget.Toast;

import com.lfs.ms.android.activity.MyApplication;

public class ToastUtil  {
	/**
	 * 显示小消息框,如"暂无数据"
	 */
	public static void showTip(String msg) {
		Toast.makeText(MyApplication.context, msg, Toast.LENGTH_LONG).show();
	}
	/**
	 * 显示小消息框,如"暂无数据"
	 */
	public static void showShortTip(String msg) {
		Toast.makeText(MyApplication.context, msg, Toast.LENGTH_SHORT).show();
	}
}
