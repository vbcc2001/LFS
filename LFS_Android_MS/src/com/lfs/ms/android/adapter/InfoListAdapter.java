package  com.lfs.ms.android.adapter;

import java.io.File;
import java.lang.reflect.Type;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.TextView;

import com.google.gson.reflect.TypeToken;
import com.lfs.ms.android.R;
import com.lfs.ms.android.activity.ImagePagerActivity;
import com.lfs.ms.android.activity.MyApplication;
import com.lfs.ms.android.object.Info;
import com.lfs.ms.android.object.RequestData;
import com.lfs.ms.android.object.ResponseData;
import com.lfs.ms.android.object.Url;
import com.lfs.ms.android.object.User;
import com.lfs.ms.android.sync.BTDownloadAsyncTask;
import com.lfs.ms.android.sync.BTDownloadAsyncTask.DownloadAsyncListener;
import com.lfs.ms.android.sync.NewHttpAsyncTask;
import com.lfs.ms.android.sync.NewHttpAsyncTask.HttpAsyncListener;
import com.lfs.ms.android.util.ToastUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;

/**自定义图片适配器**/
public class InfoListAdapter extends BaseAdapter {
	
	private SimpleDateFormat year_format = new SimpleDateFormat("yyyy", Locale.getDefault());
	private SimpleDateFormat date_format = new SimpleDateFormat("MM-dd", Locale.getDefault());
	private ImageLoader imageLoader = ImageLoader.getInstance();
	private ImageLoadingListener animateFirstListener = new AnimateFirstDisplayListener();
	private List<Info> list_info = new ArrayList<Info>();
	private DisplayImageOptions options = new DisplayImageOptions.Builder()//配置图片加载及显示选项
		.resetViewBeforeLoading(true)
		.showImageForEmptyUri(R.drawable.ic_empty)  //image连接地址为空时
		.showImageOnFail(R.drawable.ic_error)  //image加载失败
		.cacheInMemory(true)  //加载图片时会在内存中加载缓存
		.cacheOnDisc(true)   //加载图片时会在磁盘中加载缓存
		//.displayer(new RoundedBitmapDisplayer(20))  //设置用户加载图片task(这里是圆角图片显示)
		.build();
	private class ViewHolder {
		public TextView year;
		public TextView date;		
		public EditText title;
		public EditText tag;		
		public EditText content;
		public EditText download_url;
		public Gallery image_list;
		public Button delete_button;	
		public Button submit_button;		
	}
	public InfoListAdapter(List<Info> list_info){
		super();
		this.list_info = list_info;
	}
	@Override
	public int getCount() {
		return list_info.size();
	}
	@Override
	public Object getItem(int position) {
		return list_info.get(position);
	}
	@Override
	public long getItemId(int position) {
		return position;
	}
	@Override
	public View getView(final int position, View convertView, ViewGroup parent) {
		View view = convertView;
		final ViewHolder holder;
		if (convertView == null) {
			view =  View.inflate(MyApplication.context, R.layout.info_list_item, null);
			holder = new ViewHolder();
			holder.year = (TextView) view.findViewById(R.id.info_year);
			holder.date = (TextView) view.findViewById(R.id.info_date);			
			holder.title = (EditText) view.findViewById(R.id.title);
			holder.tag = (EditText) view.findViewById(R.id.tag);			
			holder.content = (EditText) view.findViewById(R.id.content);
			holder.download_url= (EditText) view.findViewById(R.id.download_url);
			holder.image_list = (Gallery) view.findViewById(R.id.info_image_list);
			holder.delete_button = (Button) view.findViewById(R.id.delete_button);	
			holder.submit_button = (Button)view.findViewById(R.id.submit_button);
			view.setTag(holder);
		} else {
			holder = (ViewHolder) view.getTag();
		}
		holder.year.setText(year_format.format(list_info.get(position).getCreate_date()) );
		holder.date.setText(date_format.format(list_info.get(position).getCreate_date()) );		
		holder.title.setText(list_info.get(position).getTitle() );
		holder.tag.setText(Arrays.deepToString(list_info.get(position).getTag().toArray()));	
		holder.download_url.setText(list_info.get(position).getDownload_url().toString());		
		holder.content.setText(list_info.get(position).getContent());
		if(list_info.get(position).getImg()!=null && list_info.get(position).getImg().size()>0){
			holder.image_list.setAdapter(new ImageGalleryAdapter(list_info.get(position).getImg()));
			holder.image_list.setAdapter(new ImageListAdapter(list_info.get(position).getImg()));
			/**图片加载监听事件**/
			OnItemClickListener  onItemClickListener= new OnItemClickListener() {
					@Override
					public void onItemClick(AdapterView<?> parent, View view, int position1, long id) {
						Intent intent = new Intent(MyApplication.context, ImagePagerActivity.class);
						intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
						Bundle bundle = new Bundle();
						bundle.putStringArray("image_list",list_info.get(position).getImg().toArray(new String[list_info.get(position).getImg().size()]));
						bundle.putInt("position",position1);
						intent.putExtras(bundle);
						MyApplication.context.startActivity(intent);
					}
			};
			holder.image_list.setOnItemClickListener(onItemClickListener);
//			holder.image_pager.setAdapter(new ImagePagerAdapter(list_info.get(position).getImg()));
//			pager.setCurrentItem(pagerPosition);
//			imageLoader.displayImage(list_info.get(position).getImg().get(0), holder.image, options, animateFirstListener);
		}
		holder.submit_button.setOnClickListener(new Button.OnClickListener() {// 创建监听
					public void onClick(View v) {
						Info info = list_info.get(position);
						info.setTitle(holder.title.getText().toString());
						info.setContent(holder.content.getText().toString());
						Type type = new TypeToken<ResponseData<String>>() {
						}.getType();
						NewHttpAsyncTask<String> task = new NewHttpAsyncTask<String>(new HttpAsyncListener<String>() {
							@Override
							public void callback(ResponseData<String> responseData) {
								if ("0".equals(responseData.getError().getNum())) {
									list_info.remove(position);
									notifyDataSetChanged();
									ToastUtil.showShortTip("Submit success");
								} else {
									ToastUtil.showShortTip("Submit fail:" + responseData.getError().getMsg());
								}
							}
						}, type);
						RequestData httpRequestData = new RequestData(new User(), "F000004");
						HashMap<String, String> agrs = new HashMap<String, String>();
						agrs.put("title", info.getTitle());
						agrs.put("content", info.getContent());
						agrs.put("source", info.getSource());
						agrs.put("download_url", info.getDownload_url().get(0));
						agrs.put("tag", info.getTag().toString());
						agrs.put("img", info.getImg().toString());
						httpRequestData.setContent(agrs);
						task.execute(httpRequestData);
						ToastUtil.showShortTip("Start submit... ");
						holder.submit_button.setText("Submit...");
					}
				}); 		
		holder.delete_button.setOnClickListener(new Button.OnClickListener() {// 创建监听
			public void onClick(View v) {
				list_info.remove(position);
				notifyDataSetChanged();
				ToastUtil.showShortTip("Start delete... ");
			}
		}); 			
		return view;
	}
	public List<Info> getList_info() {
		return list_info;
	}
	public void setList_info(List<Info> list_info) {
		this.list_info = list_info;
	}
	/**图片加载监听事件**/
	private static class AnimateFirstDisplayListener extends SimpleImageLoadingListener {
		static final List<String> displayedImages = Collections.synchronizedList(new LinkedList<String>());
		@Override
		public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
			if (loadedImage != null) {
				ImageView imageView = (ImageView) view;
				boolean firstDisplay = !displayedImages.contains(imageUri);
				if (firstDisplay) {
					FadeInBitmapDisplayer.animate(imageView, 500); //设置image隐藏动画500ms
					displayedImages.add(imageUri); //将图片uri添加到集合中
				}
			}
		}
	}

}
	