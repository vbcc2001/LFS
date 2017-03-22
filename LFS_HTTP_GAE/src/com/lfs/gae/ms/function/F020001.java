package com.lfs.gae.ms.function;


import com.lfs.gae.ms.jdo.LfsUserJDO;
import com.lfs.gae.ms.object.LfsUser;

/** 添加  */
public class F020001 extends F000001<LfsUser> {

	@Override
	public void execute() throws Exception {
		LfsUser user = new LfsUser();
		user.setEmail(requestData.getContent().get("email"));
		user.setPassword(requestData.getContent().get("password"));
		LfsUserJDO infoJDO  = new LfsUserJDO();
		user =infoJDO.addUser(user);
		responseData.getList().add(user);
	}
}
