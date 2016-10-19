package com.lfs.gae.ms.function;


import com.lfs.gae.ms.object.RequestData;
import com.lfs.gae.ms.object.ResponseData;

/**
 * 功能号接口
 */
public interface  Function<E> {
	public void execute(RequestData requestData,ResponseData<E> responseData) throws Exception;
    public void before(RequestData requestData,ResponseData<E> responseData) throws Exception;
    public void after(RequestData requestData,ResponseData<E> responseData) throws Exception;
}