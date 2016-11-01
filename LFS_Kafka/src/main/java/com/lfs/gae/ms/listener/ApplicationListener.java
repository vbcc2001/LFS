package com.lfs.gae.ms.listener;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

/**
 * 启动监听
 */
public class ApplicationListener implements ServletContextListener{	

	/**
	 * 在系统启动时调用
	 * @param ServletContextEvent 实例
	 */
	@Override
	public void contextInitialized(ServletContextEvent event) {
	}
	/**
	 * 在系统停止时调用
	 * @param ServletContextEvent 实例
	 */	
	@Override
	public void contextDestroyed(ServletContextEvent event) {
	}	
}