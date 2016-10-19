package com.lfs.gae.ms.function;

import com.lfs.gae.ms.jdo.UrlJDO;
import com.lfs.gae.ms.object.Url;

public class F010003 extends F000001<Url>{

	@Override
	public void execute() throws Exception{
		UrlJDO jdo = new UrlJDO();
		responseData.setList(jdo.get20());
	}
}
