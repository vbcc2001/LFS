package com.lfs.android.activity;

import java.util.ArrayList;
import java.util.List;

import com.lfs.android.object.Info;
import com.lfs.android.object.User;
import com.nostra13.universalimageloader.cache.disc.naming.Md5FileNameGenerator;
import com.nostra13.universalimageloader.core.ImageLoader;
import com.nostra13.universalimageloader.core.ImageLoaderConfiguration;
import com.nostra13.universalimageloader.core.assist.QueueProcessingType;

import android.app.Application;
import android.content.Context;

public class MyApplication extends Application {
	
	public static MyApplication instance ;
	public static Context context;
	public List<Info> infoList = new ArrayList<Info>(); //信息list
	public Info currentInfo = new Info() ;//当前打开的信息
	public User user = new User();//用户登录信息
	public String titleName="";//标题名
	@Override
	public void onCreate() {
		super.onCreate();
		instance=this;	
		context = this.getApplicationContext();
		initImageLoader(context);
	}
    /**初始化图片加载类配置信息**/
    public static void initImageLoader(Context context) {
        ImageLoaderConfiguration config = new ImageLoaderConfiguration.Builder(context)
            .threadPriority(Thread.NORM_PRIORITY - 2)//加载图片的线程数
            .denyCacheImageMultipleSizesInMemory() //解码图像的大尺寸将在内存中缓存先前解码图像的小尺寸。
            .discCacheFileNameGenerator(new Md5FileNameGenerator())//设置磁盘缓存文件名称
            .tasksProcessingOrder(QueueProcessingType.LIFO)//设置加载显示图片队列进程
            .writeDebugLogs() // Remove for release app
            .build();
        // Initialize ImageLoader with configuration.
        ImageLoader.getInstance().init(config);
    }
}
