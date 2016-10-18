package  com.lfs.android.adapter;

import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;

import android.graphics.Bitmap;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;

import com.lfs.android.R;
import com.lfs.android.activity.MyApplication;
import com.lfs.android.object.Info;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.ImageLoadingListener;
import com.nostra13.universalimageloader.core.assist.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;
import com.nostra13.universalimageloader.core.display.RoundedBitmapDisplayer;

/**自定义图片适配器**/
public class InfoAdapter extends BaseAdapter {
	
	private ImageLoader imageLoader = ImageLoader.getInstance();
	private ImageLoadingListener animateFirstListener = new AnimateFirstDisplayListener();
	private List<Info> list_info = new ArrayList<Info>();
	private DisplayImageOptions options = new DisplayImageOptions.Builder()//配置图片加载及显示选项
		.showImageForEmptyUri(R.drawable.ic_empty)  //image连接地址为空时
		.showImageOnFail(R.drawable.ic_error)  //image加载失败
		.cacheInMemory(true)  //加载图片时会在内存中加载缓存
		.cacheOnDisc(true)   //加载图片时会在磁盘中加载缓存
		.displayer(new RoundedBitmapDisplayer(20))  //设置用户加载图片task(这里是圆角图片显示)
		.build();
	private class ViewHolder {
		public TextView text;
		public ImageView image;
	}
	public InfoAdapter(List<Info> list_info){
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
			//view = View.inflate(context, R.layout.news_activity_news, null);
			view =  View.inflate(MyApplication.context, R.layout.item_list_image, null);
			holder = new ViewHolder();
			holder.text = (TextView) view.findViewById(R.id.text);
			holder.image = (ImageView) view.findViewById(R.id.image);
			view.setTag(holder);
		} else {
			holder = (ViewHolder) view.getTag();
		}
		holder.text.setText("Item " + (position + 1)+":"+list_info.get(position).getTitle());
		imageLoader.displayImage(list_info.get(position).getImg().get(0), holder.image, options, animateFirstListener);
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
	