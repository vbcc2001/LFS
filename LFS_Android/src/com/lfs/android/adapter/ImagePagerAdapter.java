package com.lfs.android.adapter;

import java.util.List;

import android.graphics.Bitmap;
import android.os.Parcelable;
import android.support.v4.view.PagerAdapter;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ProgressBar;

import com.lfs.android.R;
import com.lfs.android.activity.MyApplication;
import com.lfs.android.util.ToastUtil;
import com.nostra13.universalimageloader.core.DisplayImageOptions;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.assist.FailReason;
import com.nostra13.universalimageloader.core.assist.ImageScaleType;
import com.nostra13.universalimageloader.core.assist.SimpleImageLoadingListener;
import com.nostra13.universalimageloader.core.display.FadeInBitmapDisplayer;

public class ImagePagerAdapter extends PagerAdapter {
	
	private ImageLoader imageLoader = ImageLoader.getInstance();
	private List<String> images;
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
	ImagePagerAdapter(List<String> images) {
		this.images = images;
	}
	@Override
	public void destroyItem(ViewGroup container, int position, Object object) {
		container.removeView((View) object);
	}
	@Override
	public int getCount() {
		return images.size();
	}
	@Override
	public Object instantiateItem(ViewGroup view, int position) {
		View imageLayout =  View.inflate(MyApplication.context, R.layout.info_list_item_image_list_item, null);
		ImageView imageView = (ImageView) imageLayout.findViewById(R.id.image);
		final ProgressBar spinner = (ProgressBar) imageLayout.findViewById(R.id.loading);

		imageLoader.displayImage(images.get(position), imageView, options, new SimpleImageLoadingListener() {
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
			}
		});

		view.addView(imageLayout, 0);
		return imageLayout;
	}

	@Override
	public boolean isViewFromObject(View view, Object object) {
		return view.equals(object);
	}

	@Override
	public void restoreState(Parcelable state, ClassLoader loader) {
	}

	@Override
	public Parcelable saveState() {
		return null;
	}
}