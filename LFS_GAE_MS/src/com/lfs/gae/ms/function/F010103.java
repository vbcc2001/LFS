package com.lfs.gae.ms.function;

import java.util.ArrayList;
import java.util.List;

import com.lfs.gae.ms.object.Info;
import com.lfs.gae.ms.shared.InfoHelper;

public class F010103 extends F000001<Info> {

	@Override
	public void execute() throws Exception {
		String url = requestData.getContent().get("url");
		String title = requestData.getContent().get("title");
		InfoHelper info_post = new InfoHelper();
		List<Info> info_list = new ArrayList<Info>();
		String url_content = info_post.getContent(url);
		List<String> tags = info_post.getTags(title);
		info_list = info_post.changToInfo(url_content, url, tags);
		responseData.setList(info_list);
	}
}
