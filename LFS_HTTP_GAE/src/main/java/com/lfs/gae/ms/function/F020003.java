package com.lfs.gae.ms.function;

import com.lfs.gae.ms.jdo.LfsUserJDO;
import com.lfs.gae.ms.object.LfsUser;

/** 刪除  */
public class F020003 extends F000001<LfsUser> {
	@Override
	public void execute() throws Exception {
		LfsUserJDO jdo = new LfsUserJDO();
		jdo.deleteALL();
	}
}
