package com.lfs.ss.gae.client.main;

import com.google.gwt.core.client.GWT;
import com.google.gwt.dom.client.Element;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.HTML;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.Widget;
import com.lfs.ss.gae.Post;

public class Detail extends ResizeComposite {

  interface Binder extends UiBinder<Widget, Detail> { }
  private static final Binder binder = GWT.create(Binder.class);

  @UiField Element title;
  @UiField Element author;
  @UiField Element tags;
  @UiField HTML content;

  public Detail() {
    initWidget(binder.createAndBindUi(this));
  }

  public void setItem(Post item) {
  	title.setInnerText("测试内容1"+item.getTitle());
  	author.setInnerText("作者："+item.getAuthor());
  	tags.setInnerHTML("标签："+item.getTags());
  	content.setHTML(item.getContent());
  }
}
