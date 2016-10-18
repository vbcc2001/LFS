package com.lfs.ss.gae.client.header;

import com.google.gwt.core.client.GWT;
import com.google.gwt.event.dom.client.ClickEvent;
import com.google.gwt.uibinder.client.UiBinder;
import com.google.gwt.uibinder.client.UiHandler;
import com.google.gwt.user.client.Window;
import com.google.gwt.user.client.ui.Composite;
import com.google.gwt.user.client.ui.Widget;
/** 顶部导航栏 **/
public class Header extends Composite {

	interface Binder extends UiBinder<Widget, Header> {}

	private static final Binder binder = GWT.create(Binder.class);

	// @UiField Anchor sign_out_link;
	// @UiField Anchor about_link;

	public Header() {
		initWidget(binder.createAndBindUi(this));
	}

	@UiHandler("about_link")
	void onAboutClicked(ClickEvent event) {
		AboutDialog dialog = new AboutDialog();
		dialog.show();
		dialog.center();
	}

	@UiHandler("sign_out_link")
	void onSignOutClicked(ClickEvent event) {
		Window.alert("登出测试");
	}
}
