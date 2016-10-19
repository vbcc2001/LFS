package com.lfs.android.util;

import java.text.DecimalFormat;

import android.app.DownloadManager;

public class CommonUtil {
    public static String getFileSize(long size) {
    	DecimalFormat decimalFormat = new DecimalFormat("0.##");
        if (size <= 0) {
            return "0M";
        }else if (size >= (1024 * 1024)) {
        	return decimalFormat.format((double)size / (1024 * 1024))+"M";
        } else if (size >= 1024) {
        	return decimalFormat.format((double)size / 1024)+"K";
        } else {
            return size + "B";
        }
    }
    public static String getDownloadPercent(long progress, long max) {
        int rate = 0;
        if (progress <= 0 || max <= 0) {
            rate = 0;
        } else if (progress > max) {
            rate = 100;
        } else {
            rate = (int)((double)progress / max * 100);
        }
        return rate+"%";
    }
    public static boolean isDownloading(int status) {
        return status == DownloadManager.STATUS_RUNNING
                || status == DownloadManager.STATUS_PAUSED
                || status == DownloadManager.STATUS_PENDING;
    }
}
