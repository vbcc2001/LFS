package com.lfs.ms.android.adapter;
import java.util.List;

import com.lfs.ms.android.R;
import com.lfs.ms.android.activity.MyApplication;
import com.lfs.ms.android.util.ToastUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;

import android.content.Context;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ProgressBar;

public class ImageGalleryAdapter extends BaseAdapter {
	
	
	private ImageLoader imageLoader = ImageLoader.getInstance();
	private List<String> image_list;
	private DisplayImageOptions options = new DisplayImageOptions.Builder()
			.showImageForEmptyUri(R.drawable.ic_empty)
			.showImageOnFail(R.drawable.ic_error)
			//.resetViewBeforeLoading(true)
			.cacheOnDisc(true)
			.cacheInMemory(true) 
			.imageScaleType(ImageScaleType.EXACTLY)
			.bitmapConfig(Bitmap.Config.RGB_565)
			.considerExifParams(true)
			.displayer(new FadeInBitmapDisplayer(300))
			.build();
	ImageGalleryAdapter(List<String> images) {
		this.image_list = images;
	}
	

	
	@Override
	public int getCount() {
		return image_list.size();
	}

	@Override
	public Object getItem(int position) {
		return image_list.get(position);
	}

	@Override
	public long getItemId(int position) {
		return position;
	}

	@Override
	public View getView(int position, View view, ViewGroup parent) {
		
		view =  View.inflate(MyApplication.context, R.layout.info_list_item_image_list_item, null);
		final ImageView imageView = (ImageView) view.findViewById(R.id.image);
		final ProgressBar spinner = (ProgressBar) view.findViewById(R.id.loading);
		//设置控件高度
		WindowManager wm = (WindowManager) MyApplication.context.getSystemService(Context.WINDOW_SERVICE);
		DisplayMetrics metric = new DisplayMetrics();
		wm.getDefaultDisplay().getMetrics(metric);
		final int width = metric.widthPixels;
		if(position == 0 ){
			// 取控件当前的布局参数
			imageView.getLayoutParams().width=width;
		}
		imageLoader.displayImage(image_list.get(position), imageView, options, new SimpleImageLoadingListener() {

			@Override
			public void onLoadingStarted(String imageUri, View view) {
				spinner.setVisibility(View.VISIBLE);
			}
			@Override
			public void onLoadingFailed(String imageUri, View view, FailReason failReason) {
				String message = null;
				switch (failReason.getType()) {
					case IO_ERROR:
						message = "Input/Output error";
						break;
					case DECODING_ERROR:
						message = "Image can't be decoded";
						break;
					case NETWORK_DENIED:
						message = "Downloads are denied";
						break;
					case OUT_OF_MEMORY:
						message = "Out Of Memory error";
						break;
					case UNKNOWN:
						message = "Unknown error";
						break;
				}
				ToastUtil.showShortTip(message);
				spinner.setVisibility(View.GONE);
			}

			@Override
			public void onLoadingComplete(String imageUri, View view, Bitmap loadedImage) {
				spinner.setVisibility(View.GONE);
				int img_height = loadedImage.getHeight();
				int img_width = loadedImage.getWidth();
				int view_height =  imageView.getLayoutParams().height;
				int view_width = (int)((0.0+img_width)/img_height*view_height);
//				System.out.println(img_height);
//				System.out.println(img_width);
//				System.out.println(view_height);
//				System.out.println(view_width);	
				if(view_width<width && view_width>view_height){
					imageView.getLayoutParams().width = view_width;		
				}
		
			}
		});
		return view;
	}
}