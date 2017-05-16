package com.lfs.gae.ms.function;

import java.util.ArrayList;
import java.util.List;

import com.lfs.gae.ms.jdo.LfsUserJDO;
import com.lfs.gae.ms.object.LfsUser;
/** 查詢  */
public class F020002 extends F000001<LfsUser> {

	@Override
	public void execute() throws Exception {

		LfsUserJDO infoJDO  = new LfsUserJDO();
		List<LfsUser> info_list = new ArrayList<LfsUser>();
		info_list = infoJDO.getLatestInfo("", "");
		responseData.setList(info_list);
	}
}
