package com.lfs.gae.ms.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

import java.util.logging.Logger;

/**
 * 应用监听程序
 * @author 门士松  20121029
 * @version 1.0
 * @since
 */
public class ApplicationListener implements ServletContextListener{	

	private static final Logger log = Logger.getLogger(ApplicationListener.class.getName());
	
	/**
	 * 在系统启动时调用
	 * @param ServletContextEvent 实例
	 */
	@Override
	public void contextInitialized(ServletContextEvent event) {
		//初始化配置文件
		log.info(  "系统配置信息初始化开始...");
		//new Configure().loadConfig();
		log.info(  "系统配置信息初始化结束...");	
		//logger.info(  "系统初始化数据源开始...");
		//new DBConfigure().loadConfig();
		//logger.info(  "系统初始化数据源结束...");	
	}
	/**
	 * 在系统停止时调用
	 * @param ServletContextEvent 实例
	 */	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
		//关闭数据源的连接
		//new DBConfigure().destroyDataSource();
	}	
}