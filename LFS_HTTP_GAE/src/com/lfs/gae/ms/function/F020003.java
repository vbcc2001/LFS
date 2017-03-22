package com.lfs.gae.ms.function;

import com.lfs.gae.ms.jdo.InfoJDO;
import com.lfs.gae.ms.object.Info;
/** 刪除  */
public class F020003 extends F000001<Info> {
	@Override
	public void execute() throws Exception {
		InfoJDO jdo = new InfoJDO();
		jdo.deleteALL();
	}
}
