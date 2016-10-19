package com.lfs.gae.ms.function;

import com.lfs.gae.ms.object.RequestData;
import com.lfs.gae.ms.object.ResponseData;

public class F000001<E> implements Function<E> {
	
	protected RequestData requestData = new RequestData();
	protected ResponseData<E> responseData = new ResponseData<E>();
	public void execute() throws Exception{
    }
	@Override
	public void execute(RequestData requestData, ResponseData<E> responseData) throws Exception {
		responseData.getError().setNum("0");
		responseData.getError().setMsg("success");
		this.requestData = requestData;
		this.responseData = responseData;
		this.execute();
	}
	@Override
	public void before(RequestData requestData, ResponseData<E> responseData) throws Exception {}
	@Override
	public void after(RequestData requestData, ResponseData<E> responseData)throws Exception { }
}
