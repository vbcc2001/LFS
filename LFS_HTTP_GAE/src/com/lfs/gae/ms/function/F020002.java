package com.lfs.gae.ms.function;

import java.util.ArrayList;
import java.util.List;

import com.lfs.gae.ms.jdo.InfoJDO;
import com.lfs.gae.ms.object.Info;
/** 查詢  */
public class F020002 extends F000001<Info> {

	@Override
	public void execute() throws Exception {

		InfoJDO infoJDO  = new InfoJDO();
		List<Info> info_list = new ArrayList<Info>();
		info_list = infoJDO.getLatestInfo("", "");
		responseData.setList(info_list);
	}
}
