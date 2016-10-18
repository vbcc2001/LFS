package com.lfs.android.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;

/**
 * 基础Activity
 */
public class BaseActivity extends Activity {

    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
    }
    /**
     * 设置自定义标题
     */
    protected void setCustomTitle() {
    }
    /**
     * 标题栏返回操作
     */
    public void titleBarBack(){
    	finish();
    }
    /**
     * 创建设置菜单
     */
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        //getMenuInflater().inflate(R.menu.activity_base, menu);
        return true;
    } 
}
