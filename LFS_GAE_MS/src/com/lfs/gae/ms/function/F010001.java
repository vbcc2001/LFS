package com.lfs.gae.ms.function;

import java.util.List;

import com.lfs.gae.ms.jdo.UrlJDO;
import com.lfs.gae.ms.object.Url;
import com.lfs.gae.ms.shared.InfoHelper;

public class F010001 extends F000001<Url> {

	@Override
	public void execute() throws Exception {
		String path = requestData.getContent().get("url");
		InfoHelper info_help = new InfoHelper();
		UrlJDO urlJDO = new UrlJDO();
		String content = info_help.getContent(path);
		List<Url> url_list = info_help.changToUrlList(content, path);
		urlJDO.add(url_list.get(0));
		urlJDO.add(url_list.get(1));
		urlJDO.add(url_list.get(2));
//		for (Url url : url_list) {
//			urlJDO.add(url);
//		}
		responseData.setList(url_list);
	}
}
