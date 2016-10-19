package  com.lfs.android.adapter;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;

import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.Gallery;
import android.widget.ImageView;
import android.widget.TextView;

import com.lfs.android.R;
import com.lfs.android.activity.ImagePagerActivity;
import com.lfs.android.activity.MyApplication;
import com.lfs.android.object.BTFile;
import com.lfs.android.object.Info;
import com.lfs.android.sync.BTDownloadAsyncTask;
import com.lfs.android.sync.BTDownloadAsyncTask.Listener;
import com.lfs.android.util.ToastUtil;
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
		public TextView title;
		public TextView tag;		
		public TextView content;
		public TextView content_state;		
		public Gallery image_list;
		public Button button;		
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
			holder.title = (TextView) view.findViewById(R.id.title);
			holder.tag = (TextView) view.findViewById(R.id.tag);			
			holder.content = (TextView) view.findViewById(R.id.content);
			holder.content_state = (TextView) view.findViewById(R.id.content_state);			
			holder.image_list = (Gallery) view.findViewById(R.id.info_image_list);
			holder.button = (Button)view.findViewById(R.id.download_button);
			view.setTag(holder);
		} else {
			holder = (ViewHolder) view.getTag();
		    holder.content_state.setText(R.string.more);
		    holder.content.setMaxLines(0);
		}
		
		holder.year.setText(year_format.format(list_info.get(position).getCreate_date()) );
		holder.date.setText(date_format.format(list_info.get(position).getCreate_date()) );		
		holder.title.setText(list_info.get(position).getTitle() );
		holder.tag.setText(Arrays.deepToString(list_info.get(position).getTag().toArray()));	
		String content = list_info.get(position).getContent();
		if(content!=null && content.length()>0){
			holder.content.setText(content);
			holder.content_state.setVisibility(View.VISIBLE);
			holder.content_state.setOnClickListener(new OnClickListener() {
				    Boolean flag = true;
				   @Override
				   public void onClick(View v) {
				    if(flag){
				     flag = false;
				     holder.content.setMaxLines(Integer.MAX_VALUE);
				     holder.content_state.setText("Close...");
				    }else{
				     flag = true;
				     holder.content_state.setText(R.string.more);
				     holder.content.setMaxLines(0);
				    }
				   }
				  });
		}
		
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
		holder.button.setOnClickListener(new Button.OnClickListener(){//创建监听    
            public void onClick(View v) {    
            	String path = list_info.get(position).getDownload_url().get(0);
            	String name = path.substring(path.length()-12,path.length()-5);
            	String url = path.substring(0,path.length()-13).replace("file.php", "down.php");
            	String desc = list_info.get(position).getTitle();
            	BTDownloadAsyncTask bt = new BTDownloadAsyncTask(new Listener() {
								@Override
								public void callback(String fileName) {
									ToastUtil.showShortTip("Finish download... "+fileName);
									holder.button.setText("open");
									Uri uri = Uri.fromFile(new File(fileName));
									Intent intent = new Intent(Intent.ACTION_VIEW);
					        intent.setDataAndType(uri, "application/x-bittorrent");
					        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
					        MyApplication.context.startActivity(intent);
								}
								@Override
								public void progress(long current, long total) {
								}
							});
            	ToastUtil.showShortTip("Start download... ");
            	holder.button.setText("loading...");
            	bt.execute(name,url);
            	BTFile bt_file =new BTFile();
            	bt_file.setSave_path("/laifeisi/torrent/"+name+".torrent");
            	bt_file.setName(name);
            	bt_file.setSource(url);
            	bt_file.setDesc(desc);
            	MyApplication.instance.bt_file_list.add(bt_file);
            	Uri uri = Uri.parse("content:///laifeisi/torrent/");
      	      	MyApplication.context.getContentResolver().registerContentObserver(uri, true, new DownloadChangeObserver(new Handler()));
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
    class DownloadChangeObserver extends ContentObserver {
        public DownloadChangeObserver(Handler handler) {
            super(handler);
        }
        @Override
        public void onChange(boolean selfChange) {
//          int[] bytesAndStatus = downloadManagerPro.getBytesAndStatus(downloadId);
//          handler.sendMessage(handler.obtainMessage(0, bytesAndStatus[0], bytesAndStatus[1], bytesAndStatus[2]));
        }
    }
}
	