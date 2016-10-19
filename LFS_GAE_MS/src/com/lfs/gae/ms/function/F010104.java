package com.lfs.gae.ms.function;

import com.lfs.gae.ms.jdo.InfoJDO;

@SuppressWarnings("rawtypes")
public class F010104 extends F000001{
	@Override
	public void execute() throws Exception{
    	InfoJDO infoJDO = new InfoJDO();
		infoJDO.deleteALL();		
	}
}
