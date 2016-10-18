
package com.lfs.ss.gae.client.main;

import com.google.gwt.core.client.GWT;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiField;
import com.google.gwt.user.client.ui.ResizeComposite;
import com.google.gwt.user.client.ui.StackLayoutPanel;

public class Sidebar extends ResizeComposite {

  interface Binder extends UiBinder<StackLayoutPanel, Sidebar> { }
  private static final Binder binder = GWT.create(Binder.class);
  public @UiField Shortcuts tree_2014;
  public @UiField Shortcuts tree_2013;
  public Sidebar() {
   this. initWidget(binder.createAndBindUi(this));
  }
}
