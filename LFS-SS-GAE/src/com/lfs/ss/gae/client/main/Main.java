package com.lfs.ss.gae.client.main;

import com.google.gwt.core.client.EntryPoint;
import com.google.gwt.core.client.GWT;
import com.google.gwt.dom.client.Element;
import com.google.gwt.dom.client.Style.Overflow;
import com.google.gwt.event.logical.shared.SelectionEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.DockLayoutPanel;
import com.google.gwt.user.client.ui.RootLayoutPanel;
import com.google.gwt.user.client.ui.TreeItem;
import com.lfs.ss.gae.Post;
import com.lfs.ss.gae.client.header.Header;
/** 主框架 **/
public class Main implements EntryPoint {
	//定义Mail的UI绑定接口
  interface Binder extends UiBinder<DockLayoutPanel, Main> { }
  //创建Mail的UI绑定对象
  private static final Binder binder = GWT.create(Binder.class);
  @UiField Header header;
  @UiField Sidebar list;
  @UiField Detail detail;
  
  public void onModuleLoad() {
    //创建UI，定义为Mail.ui.xml.
    DockLayoutPanel outer = binder.createAndBindUi(this);
    //去除滚动条
    Window.enableScrolling(false);
    Window.setMargin("0px");
    // Special-case stuff to make topPanel overhang a bit.
    Element header_elem = outer.getWidgetContainerElement(header);
    header_elem.getStyle().setZIndex(2);
    header_elem.getStyle().setOverflow(Overflow.VISIBLE);
    //将MailUI放到根节点中
    RootLayoutPanel root = RootLayoutPanel.get();
    root.add(outer);
    // 设置内容列表监听
    list.tree_2013.setListener(new Shortcuts.Listener() {  public void onItemSelected(SelectionEvent<TreeItem> event) {  				
    	Post post = new Post();
    	post.setContent("11111111111111111"+event.getSelectedItem().getHTML());
    	detail.setItem(post); 
    }});
    list.tree_2014.setListener(new Shortcuts.Listener() {  public void onItemSelected(SelectionEvent<TreeItem> event) {  				
    	Post post = new Post();
    	post.setContent("22222222222222222"+event.getSelectedItem().getHTML());
    	detail.setItem(post); 
    }});

  }
}
