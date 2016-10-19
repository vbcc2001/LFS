package com.lfs.gae.ms.function;

import com.lfs.gae.ms.jdo.InfoJDO;
import com.lfs.gae.ms.object.Info;

/** 添加  */
public class F020001 extends F000001<Info> {

	@Override
	public void execute() throws Exception {
		Info info = new Info();
		info.setTitle(requestData.getContent().get("title"));
		info.getDownload_url().add(requestData.getContent().get("url"));
		InfoJDO infoJDO  = new InfoJDO();
		infoJDO.addInfo(info);
	}
}
