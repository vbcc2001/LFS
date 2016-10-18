package com.lfs.android.activity;

import android.app.Activity;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;

import com.lfs.android.R;

public class MainActivity extends Activity {
	
//	DisplayImageOptions options; //配置图片加载及显示选项
//	String[] imageUrls;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
		setContentView(R.layout.activity_main);
		if (savedInstanceState == null) {
			getFragmentManager().beginTransaction().add(R.id.container, new PlaceholderFragment()).commit();
		}
//		this.
//		imageUrls =Constants.IMAGES;
//
//		listView = (ListView) findViewById(android.R.id.list);
//		//绑定适配器
//		listView.setAdapter(new ItemAdapter());
//		listView.setOnItemClickListener(new OnItemClickListener() {
//			@Override
//			public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
//				//startImagePagerActivity(position);
//			}
//		});
	}
	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		getMenuInflater().inflate(R.menu.main, menu);
		return true;
	}
	@Override
	public boolean onOptionsItemSelected(MenuItem item) {
		int id = item.getItemId();
		if (id == R.id.action_settings) {
			return true;
		}
		return super.onOptionsItemSelected(item);
	}
	@Override
	public void onBackPressed() {
		//AnimateFirstDisplayListener.displayedImages.clear();
		super.onBackPressed();
	}

//	private void startImagePagerActivity(int position) {
//		Intent intent = new Intent(this, ImagePagerActivity.class);
//		intent.putExtra(Extra.IMAGES, imageUrls);
//		intent.putExtra(Extra.IMAGE_POSITION, position);
//		startActivity(intent);
//	}


}





