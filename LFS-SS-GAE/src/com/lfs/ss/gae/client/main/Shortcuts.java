
package com.lfs.ss.gae.client.main;

import com.google.gwt.event.logical.shared.SelectionEvent;
import com.google.gwt.event.logical.shared.SelectionHandler;
import com.google.gwt.safehtml.shared.SafeHtmlBuilder;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Tree;
import com.google.gwt.user.client.ui.TreeItem;
/** 树状列表**/
public class Shortcuts extends Composite {
  public interface Listener { void onItemSelected(SelectionEvent<TreeItem> event); }
  private Listener listener;
	public void setListener(Listener listener) {
		this.listener = listener;
	}
  public Shortcuts() {
		initWidget(createTree("2014"));
  }
  /** 创建 目录树 **/
  public Tree createTree(String title) {
	  Tree tree = new Tree();
		/*-----------------------添加根目录-----------------------------*/
    SafeHtmlBuilder builder = new SafeHtmlBuilder();
    String html = "<button class='image-button bg-darkGreen fg-white image-left'>2014年1月<i class='icon-windows bg-green fg-white'></i></button>";
    builder.appendHtmlConstant(html);
    TreeItem root = new TreeItem(builder.toSafeHtml());
    tree.addItem(root);
    /*-----------------------添加二级目录-----------------------------*/
  	SafeHtmlBuilder builder_2 = new SafeHtmlBuilder();
    String html_2 = "<button class='image-button warning fg-white image-left'>2014年1月01日<i class='icon-windows warning fg-white'></i></button>";
  	builder_2.appendHtmlConstant(html_2);  	
    root.addItem(builder_2.toSafeHtml());
  	SafeHtmlBuilder builder_3 = new SafeHtmlBuilder();
    String html_3 = "<button class='image-button warning fg-white image-left'>2014年1月01日<i class='icon-windows warning fg-white'></i></button>";
  	builder_3.appendHtmlConstant(html_3);  	
    root.addItem(builder_3.toSafeHtml());
    root.setState(true);
    /*-----------------------添加监听-----------------------------*/
		tree.addSelectionHandler(new SelectionHandler<TreeItem>(){
			@Override
			public void onSelection(SelectionEvent<TreeItem> event) {
				listener.onItemSelected(event);
			}});
		return tree;
  }
}
