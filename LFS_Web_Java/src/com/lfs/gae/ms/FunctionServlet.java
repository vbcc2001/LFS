package com.lfs.gae.ms;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.lfs.gae.ms.function.Function;
import com.lfs.gae.ms.object.RequestData;
import com.lfs.gae.ms.object.ResponseData;
import com.lfs.gae.ms.shared.StringHelper;

import java.io.IOException;
import java.io.PrintWriter;

@SuppressWarnings("serial")
public class FunctionServlet<E> extends HttpServlet {
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
		ResponseData<E> responseData = new ResponseData<E>();
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd HH:mm:ss.S").create();
		try {
			// post提交
			if ("POST".equalsIgnoreCase(request.getMethod())) {
				String jsonContent = request.getParameter("jsonContent");
				if (!StringHelper.isEmpty(jsonContent)) {
					// @SuppressWarnings("unchecked")
					RequestData requestData = gson.fromJson(jsonContent, new TypeToken<RequestData>() {
					}.getType());
					// 根据路径生成相应的Action对象
					String className = this.getClass().getPackage().getName() + ".function." + requestData.getFunction();
					@SuppressWarnings("unchecked")
					Function<E> action = (Function<E>) Class.forName(className).newInstance();
					action.before(requestData, new ResponseData<E>());
					action.execute(requestData, responseData);
					action.after(requestData, responseData);
				} else {
					responseData.getError().setNum("-3");
					responseData.getError().setMsg("parameter jsonContent is null !");
				}
			} else {
				responseData.getError().setNum("-2");
				responseData.getError().setMsg("need post submit  !");
			}
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
			response.sendError(HttpServletResponse.SC_NOT_FOUND);
		} catch (Exception e) {
			e.printStackTrace();
			responseData.getError().setNum("-1");
			responseData.getError().setMsg(e.getMessage());
		}
		try {
			String str = gson.toJson(responseData);
			PrintWriter pw = response.getWriter();
			pw.print(str);
			pw.flush();
			pw.close();
		} catch (Exception e) {
			e.printStackTrace();
			response.sendError(HttpServletResponse.SC_INTERNAL_SERVER_ERROR);
		}
	}
}
